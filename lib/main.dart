import 'package:flutter/material.dart';
import 'screens/tabs_screen.dart';
import './models/colors.dart';
import 'screens/business_details_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Palette.kToDark[800],
        primarySwatch: Palette.kToDark,
        brightness: Brightness.light,
        accentColor: Palette.kToDark[500],
        canvasColor: Colors.white,
        cardColor: Palette.kToDark[0],
        focusColor: const Color.fromRGBO(237, 125, 166, 1),
      ),
      home: TabsScreen(),
      // routes: {
      //   BusinessDetailsScreen.routeName: (context) => BusinessDetailsScreen(),
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (c) => TabsScreen(),);
      },
    );
  }
}
