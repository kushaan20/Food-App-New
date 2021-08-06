import 'package:flutter/material.dart';
//import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:app_kushaan/auth_services.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  //static final String path = "lib/src/pages/profile/profile1.dart";
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      // backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text("View Profile"),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.5, 0.9],
                    colors: [Colors.blue, Colors.lightBlue.shade300])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller:_nameController,
                  decoration: InputDecoration(
                    hintText:"Name",
                  ),
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),
            ),
            subtitle: TextFormField(
              controller:_emailController,
              decoration:InputDecoration(hintText: "abc@xyz.com"),
              style: TextStyle(fontSize: 18.0),
            ),
          ),

          Divider(),
          InkWell(
            onTap: () async {
              await authService.signOut();
              Navigator.pop(context);
            },
            child:
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Color(0xff20D5B2),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 40,
                        offset: Offset(4, 4))
                  ]),
              child: Center(
                child: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
