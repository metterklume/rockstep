import 'dart:async';
import 'package:uuid/uuid.dart';
import 'dart:convert';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:tuple/tuple.dart';

import 'package:my_app/app/app.locator.dart';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:my_app/services/main_service.dart';
import 'package:my_app/data/models/acclerometer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final _mainService = locator<MainService>();

  bool _isSelected = false;

  List<double>? _userAccelerometerValues;
  List<double>? _gyroscopeValues;
  final _accValues = <Map<String, dynamic>>[];

  var uuid = Uuid();
  var _uuid;

  final _streamSubscriptions = <StreamSubscription<dynamic>>[];

  @override
  Widget build(BuildContext context) {
    final userAccelerometer = _userAccelerometerValues
        ?.map((double v) => v.toStringAsFixed(1))
        .toList();

    final userGyroscope =
        _gyroscopeValues?.map((double v) => v.toStringAsFixed(1)).toList();

    return Scaffold(
      body: StreamBuilder2<UserAccelerometerEvent, GyroscopeEvent>(
          streams: Tuple2(userAccelerometerEvents, gyroscopeEvents),
          builder: (context,
              Tuple2<AsyncSnapshot<UserAccelerometerEvent>,
                      AsyncSnapshot<GyroscopeEvent>>
                  snapshot) {
            if (userAccelerometer != null && userGyroscope != null) {
              var d = Acclerometer(
                  timestamp: DateTime.now(),
                  accelo: userAccelerometer,
                  rotation: userGyroscope);
              _accValues.add(d.toJson());
            }
            return Center(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 58,
                    child: SizedBox(),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Accelerometer [x, y, z]: $userAccelerometer'),
                        Text('Gyroscope [x, y, z]: $userGyroscope'),
                      ]),
                ],
              )
            ]));
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => toggelSelected(_accValues),
        backgroundColor: _isSelected ? Colors.green : Colors.black,
        icon: _isSelected
            ? const Icon(Icons.directions_run)
            : const Icon(Icons.add),
        label: _isSelected ? const Text('STOP') : const Text('START'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void toggelSelected(data) async {
    if (_isSelected) {
      setState(() {
        _isSelected = false;
      });

      for (final subscription in _streamSubscriptions) {
        subscription.pause();
      }
      _uuid = uuid.v1();

      if (data != null) {
        _mainService.addData(_uuid.toString(), true, data);
      } else {
        _mainService.addData(_uuid.toString(), false, {});
      }
    } else {
      _isSelected = true;
      for (final subscription in _streamSubscriptions) {
        subscription.resume();
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    for (final subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }

  @override
  void initState() {
    super.initState();

    _streamSubscriptions.add(
      userAccelerometerEvents.listen(
        (UserAccelerometerEvent event) {
          setState(() {
            _userAccelerometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    _streamSubscriptions.add(
      gyroscopeEvents.listen(
        (GyroscopeEvent event) {
          setState(() {
            _gyroscopeValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
    for (final subscription in _streamSubscriptions) {
      subscription.pause();
    }
  }
}
