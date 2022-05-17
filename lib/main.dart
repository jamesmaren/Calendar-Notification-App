import 'package:flutter/material.dart';
import 'package:flutter_local_calendar_todo_app/Db/db_helper.dart';
import 'package:flutter_local_calendar_todo_app/services/theme_services.dart';
import 'package:flutter_local_calendar_todo_app/ui/home_page.dart';
import 'package:flutter_local_calendar_todo_app/ui/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'to-do calendar',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: homePage(),
    );
  }
}
