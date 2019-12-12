import 'package:Tyred/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Tyred/authentication/authentication.dart';
import 'package:provider/provider.dart';
import 'package:Tyred/services/auth.dart';
import 'wrapper.dart';
import 'package:Tyred/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

//
//void main() {
//  // Enable Full Screen viewing
//  SystemChrome.setEnabledSystemUIOverlays([]);
//  runApp(
//    StreamProvider<User>.value(
//      value: AuthService().user,
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        home: Wrapper(),
//        theme: ThemeData(
//          primaryColor: Color(0xff37474f),
//          colorScheme: ColorScheme(
//            onBackground: Color(0xff37474f),
//            background: Colors.white,
//            error: Colors.red,
//            surface: Colors.white,
//            onSurface: Colors.black,
//            brightness: Brightness.light,
//            primary: Color(0xff37474f),
//            primaryVariant: Color(0xff102027),
//            onPrimary: Colors.white,
//            secondary: Color(0xffffe082),
//            secondaryVariant: Color(0xffcaae53),
//            onSecondary: Colors.black,
//            onError: Colors.white,
//          ),
//        ),
//      ),
//    ),
//  );
//}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Authentication(),
      image: Image.asset('assets/images/tyred.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Color(0xff102027),
    );
  }
}
