import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Home/StartingPage.dart';
import 'Home/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Familia',
      theme: ThemeData(
        // These settings are for setting the app to light mode
        appBarTheme:
            const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
        brightness: Brightness.light,
        splashColor: Colors.transparent,

        // setting the background color of the app to light pink
        canvasColor: Color.fromARGB(255, 246, 217, 217),
      ),
      debugShowCheckedModeBanner: false,

      initialRoute: "/", // initial route of the app
      routes: {
        // routes of the app
        "/": (context) => StartingPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
