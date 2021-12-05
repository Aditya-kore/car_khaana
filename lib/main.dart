import 'package:car_khaana/login_page.dart';
import 'package:car_khaana/home_page.dart';
import 'package:car_khaana/services/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance)),
          StreamProvider(
            create:(context)=> context.read<AuthenticationService>().authStateChanges,)
      ],
      child: MaterialApp(
        home: AuthWrapper(),
      ),
    );
        
  }
}

 class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final firebaseuser = context.watch<User>();  //causing errors

    /* if(firebaseuser != null){
      return HomePage();
    } */
    return LoginPage();
  }
} 