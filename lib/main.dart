import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project_iug_app/screens/blind_around_me_screen.dart';
import 'package:project_iug_app/screens/blind_home_screen.dart';
import 'package:project_iug_app/screens/blind_profile_confirm_message_screen.dart';
import 'package:project_iug_app/screens/blind_profile_save_screen.dart';
import 'package:project_iug_app/screens/blind_profile_screen.dart';
import 'package:project_iug_app/screens/blind_search_result_screen.dart';
import 'package:project_iug_app/screens/blind_signup_login_screen.dart';
import 'package:project_iug_app/screens/blind_signup_screen.dart';
import 'package:project_iug_app/screens/blind_tracking_screen.dart';
import 'package:project_iug_app/screens/first_screen.dart';
import 'package:project_iug_app/screens/blind_login_screen.dart';


import 'screens/launch_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [Locale('ar'), Locale('en')],
      locale: Locale('ar'),
      initialRoute: '/launch_screen',
      //عوضا عن الهوم
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/first_screen': (context) => const FirstScreen(),
        '/blind_signup_screen': (context) => const BlindSignUpScreen(),
        '/blind_signup_login_screen': (context) => const BlindSignUpLoginScreen(),
        '/blind_login_screen': (context) => const BlindLoginScreen(),
        '/blind_home_screen': (context) => const BlindHomeScreen(),
        '/blind_tracking_screen': (context) => const BlindTrackingScreen(),
        '/blind_search_result_screen': (context) => const BlindSearchResultScreen(),
        '/blind_around_me_screen': (context) => const BlindAroundMeScreen(),
        '/blind_profile_screen': (context) => const BlindProfileScreen(),
        '/blind_profile_save_screen': (context) => const BlindProfileSaveScreen(),
        '/blind_profile_confirm_message_screen': (context) => const BlindProfileConfirmMessageScreen(),

      },
    );
  }
}
