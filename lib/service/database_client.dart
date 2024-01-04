import 'dart:io';

import 'package:path_provider/path_provider.dart';

class DatabaseClient {
  static final DatabaseClient _instance = DatabaseClient();

  void initializeDatabase() async {
    Directory dir = await getApplicationCacheDirectory();
  }
}
