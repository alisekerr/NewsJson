import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_json/feature/constants/theme/theme_data.dart';
import 'package:news_json/feature/view/home_view.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme:newsThemeData ,debugShowCheckedModeBanner: false,home: HomeView());
  }
}
