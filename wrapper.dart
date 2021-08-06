import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_kushaan/home_page.dart';
import 'package:app_kushaan/splash.dart';
import 'package:app_kushaan/auth_services.dart';
import 'package:app_kushaan/user_model.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream:authService.user,
      builder:(_,AsyncSnapshot<User?>snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          final User? user = snapshot.data;
          return user == null?SplashScreen():HomePage();
        } else{
          return Scaffold(body:Center(child:CircularProgressIndicator(),),);
        }
      }
    );
  }
}
