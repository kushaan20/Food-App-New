// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_kushaan/constant.dart';
import 'package:app_kushaan/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:app_kushaan/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [Provider<AuthService>(create:(_)=>AuthService(),),],
    child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login SignUP',
      theme: ThemeData(
        primaryColor: appPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Wrapper(),
    ),
    );
  }
}