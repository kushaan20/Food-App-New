import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:app_kushaan/home_page.dart';
//import 'package:food_app/home_screen.dart';
import 'package:app_kushaan/signup.dart';
import 'package:app_kushaan/auth_services.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final List<String> images = [
    'https://i.pinimg.com/originals/29/01/79/290179e7ee286751a4b0332087583ad6.jpg',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F2.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F3.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F5.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
  ];


  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
                  Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                Animator<double>(
                  triggerOnInit: true,
                  curve: Curves.easeIn,
                  tween: Tween<double>(begin: -1, end: 0),
                  builder: (context, state, child) {
                    return FractionalTranslation(
                      translation: Offset(state.value,0),
                      child: child,
                    );
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListView(
                      physics:
                      MediaQuery.of(context).viewInsets == EdgeInsets.zero
                          ? NeverScrollableScrollPhysics()
                          : null,
                      padding: const EdgeInsets.all(32.0),
                      shrinkWrap: true,
                      children: [
                        const SizedBox(height: kToolbarHeight),
                        Text(
                          "Namaste!",
                          // style: Theme.of(context)
                          //     .textTheme
                          //     //.headline4!
                          //     .copyWith(color: Colors.white),
                          // textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "Welcome! Please login with your credentials! If you are new to the app, please create a new account to enjoy the features!",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.all(32.0),
                          elevation: 0,
                          textColor: Colors.white,
                          color: Colors.lightBlueAccent,
                          child: Text("Continue".toUpperCase()),
                          onPressed: () async {
                            final user = await authService.signInWithEmailAndPassword(_emailController.text,_passwordController.text);
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          controller:_emailController,
                          style:TextStyle(color:Colors.white,fontSize:20),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 32.0),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.blueGrey,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        TextField(
                          controller:_passwordController,
                          style:TextStyle(color:Colors.white,fontSize:20),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 32.0),
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.blueGrey,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        FlatButton(
                          textColor: Colors.white,
                          child: Text("Create new account"),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SignupPage()),
                            );
                          },

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
            RaisedButton(onPressed: () {  },

          )
        ],
      ),
    );
  }
}