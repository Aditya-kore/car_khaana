import 'package:car_khaana/login_page.dart';
import 'package:car_khaana/home_page.dart';
import 'package:car_khaana/services/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
 // WidgetsFlutterBinding.ensureInitialized();

 // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage()
      );
  }
}

/* class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = context.watch<User>();

    if(user != null){
      return Text("user null");
    }
    return LoginPage();
  }
} */