import 'package:flutter/material.dart';
import 'package:shamo_apps/shared/theme.dart';
import 'package:shamo_apps/ui/pages/detail_chat_page.dart';
import 'package:shamo_apps/ui/pages/edit_profile_page.dart';
import 'package:shamo_apps/ui/pages/home/main_page.dart';
import 'package:shamo_apps/ui/pages/sign_in_page.dart';
import 'package:shamo_apps/ui/pages/sign_up_page.dart';
import 'package:shamo_apps/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatpage(),
        '/edit-profile': (context) => EditProfilePage(),
      },
    );
  }
}
