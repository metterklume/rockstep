// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:sensors_plus/sensors_plus.dart';
// import 'dart:async';

// // Consts
// import 'package:my_app/consts/strings.dart' as Strings;

// // Widgets

// class DataCollectionToggle extends StatefulWidget {
//   const DataCollectionToggle({Key? key}) : super(key: key);

//   @override
//   State<DataCollectionToggle> createState() => _DataCollectionToggle();
// }

// class _DataColleactionToggle extends State<DataCollectionToggle> {
//   bool _isSelected = false;
//   List<double>? _userAccelerometerValues;
//   int cat = 0;

//   final _streamSubscriptions = <StreamSubscription<dynamic>>[];

//   @override
//   Widget build(BuildContext context) {
//     final userAccelerometer = _userAccelerometerValues
//         ?.map((double v) => v.toStringAsFixed(1))
//         .toList();

//     return Row(mainAxisSize: MainAxisSize.min, children: [
//       Expanded(
//           child: IconButton(
//         padding: const EdgeInsets.all(0),
//         alignment: Alignment.centerRight,
//         icon: (_isSelected
//             ? const Icon(Icons.directions_run)
//             : const Icon(Icons.directions_run)),
//         color: (_isSelected ? Colors.red[500] : Colors.grey),
//         onPressed: () => {
//           setState(() {
//             toggelSelected();
//           })
//         },
//       )),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const SizedBox(
//             width: 58,
//             child: SizedBox(),
//           ),
//           Text('UserAccelerometer: $userAccelerometer'),
//           Text('isSelected: $_isSelected')
//         ],
//       )
//     ]);
//   }

//   void toggelSelected() {
//     print(_isSelected);
//     if (_isSelected) {
//       _isSelected = false;
//       for (final subscription in _streamSubscriptions) {
//         subscription.pause();
//       }
//     } else {
//       _isSelected = true;
//       for (final subscription in _streamSubscriptions) {
//         subscription.resume();
//       }
//     }
//   }
//   // @override
//   // Widget build( context) {
//   //   final userAccelerometer = _userAccelerometerValues
//   //       ?.map((double v) => v.toStringAsFixed(1))
//   //       .toList();

//   //   return Center(
//   //     child: Column(
//   //       mainAxisAlignment: MainAxisAlignment.center,
//   //       children: <Widget>[
//   //         ElevatedButton.icon(
//   //           icon: Icon(
//   //             _isSelected ? Icons.directions_run : Icons.directions_run,
//   //           ),
//   //           label: Text(
//   //             _isSelected ? 'Start' : 'Stop',
//   //           ),
//   //           // 3
//   //           style: ElevatedButton.styleFrom(
//   //             primary: _isSelected ? Colors.red : Colors.grey,
//   //           ),
//   //           onPressed: () => {
//   //             setState(() {
//   //               _isSelected = !_isSelected;
//   //             })
//   //           },
//   //         ),
//   //         Text('UserAccelerometer: $userAccelerometer'),
//   //         Text('isSelected: $_isSelected'),
//   //         Text('cat: $cat'),
//   //       ],
//   //     ),
//   //   );
//   // }

//   @override
//   void dispose() {
//     super.dispose();
//     for (final subscription in _streamSubscriptions) {
//       subscription.cancel();
//     }
//   }

//   @override
//   void initState() {
//     super.initState();

//     _streamSubscriptions.add(
//       userAccelerometerEvents.listen(
//         (UserAccelerometerEvent event) {
//           setState(() {
//             _userAccelerometerValues = <double>[event.x, event.y, event.z];
//           });
//         },
//       ),
//     );
//   }
// }
