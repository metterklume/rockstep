import 'package:postgrest/postgrest.dart';
import 'package:my_app/app/supabase_api.dart';
import 'package:my_app/services/supabase_service.dart';
import 'package:logger/logger.dart';

import 'package:my_app/data/models/droplet.dart';

class MainService extends SupabaseService<Droplet> {
  final _logger = Logger();

  @override
  String tableName() {
    return "data";
  }

  Future<void> addData(id, _permission, _details) async {
    final response = await create(
      Droplet(id: id, permission: _permission, details: _details).toJson(),
    );

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }
  }
}
