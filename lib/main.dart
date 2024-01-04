import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/app_page.dart';
import 'package:flutter_application_5/pages/main_page.dart';
import 'package:flutter_application_5/pages/note_page.dart';
import 'package:flutter_application_5/service/database_client.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseClient.instance.initializeDatabase();
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const MainPage(),
        ),
        GetPage(
          name: '/add', 
          page: () => AppPage(),
        ),
        GetPage(
          name: '/view', 
          page: () => const NotePage(),
        ),
      ],
      initialRoute: '/',
    );
  }
}

