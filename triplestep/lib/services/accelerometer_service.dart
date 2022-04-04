import 'package:postgrest/postgrest.dart';
import 'package:my_app/app/supabase_api.dart';
import 'package:my_app/services/supabase_service.dart';
import 'package:logger/logger.dart';

import 'package:my_app/data/models/droplet.dart';

class AccelerometerService extends SupabaseService<Droplet> {
  final _logger = Logger();

  @override
  String tableName() {
    return "data";
  }

  Future<PostgrestResponse> addData(
      {required String id, required Droplet data}) async {
    return await supabase
        .from("data")
        .insert(
            Droplet(id: id, permission: data.permission, details: data.details)
                .toJson())
        .execute();
  }

  Future<void> createLog(id, _permission, _details) async {
    final response = await create(
      Droplet(id: id, permission: _permission, details: _details).toJson(),
    );

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }
  }
}
