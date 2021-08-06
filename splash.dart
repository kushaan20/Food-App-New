import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:app_kushaan/login.dart';
import 'package:app_kushaan/home_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
        body: IntroductionScreen(
            globalBackgroundColor: Colors.lightBlue[50],
            pages: [
              PageViewModel(
                  bodyWidget: Center(
                    child: Text(
                      "Explore India through the one combining element, snacks!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500, shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        )
                      ]),
                    ),
                  ),
                  image: Image.asset("assets/intro1.png"),
                  footer: Text(""),
                  titleWidget: Text(
                    "Foods Of India",
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  )),
              PageViewModel(
                  title: "Explore all States through Food",
                  bodyWidget: Center(
                    child: Text(
                      "Easily search for states and cities to explore them through their snacks!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500, shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        )
                      ]),
                    ),
                  ),
                  image: Image.asset("assets/intro2.png")),
              PageViewModel(
                  title: "Get Descriptions, Images of the Snacks",
                  bodyWidget: Center(
                    child: Text(
                      "Get all the information of the snacks you need in one, easy way!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500, shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        )
                      ]),
                    ),
                  ),
                  image: Image.asset("assets/intro3.png")),
              PageViewModel(
                  title: "Order Directly from the Merchant's Website Using our Link!",
                  bodyWidget: Center(
                    child: Text(
                      "We will try and provide you with the link to directly order from the seller's website, saving the hassle to search for it!.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500, shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        )
                      ]),
                    ),
                  ),
                  image: Image.asset("assets/intro4.png")),
              PageViewModel(
                  title: "Order Directly from the App: Coming Soon!!",
                  bodyWidget: Center(
                    child: Text(
                      "We are working to allow you to order your favourite snacks from our app directly! Stay tuned!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500, shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        )
                      ]),
                    ),
                  ),
                  image: Image.asset("assets/intro5.png")),
            ],
            onDone: () {
              print("Done is clicked");
            },
            showSkipButton: true,
            showNextButton: true,
            nextFlex: 1,
            dotsFlex: 2,
            skipFlex: 1,
            animationDuration: 1000,
            curve: Curves.fastOutSlowIn,
            dotsDecorator: DotsDecorator(
                spacing: EdgeInsets.all(5),
                activeColor: Color(0xff20D5B2),
                // activeSize: Size.square(10),
                // size: Size.square(5),
                activeSize: Size(20, 10),
                size: Size.square(10),
                activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
            skip: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Color(0xff20D5B2),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        offset: Offset(4, 4))
                  ]),
              child: Center(
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            next: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Color(0xff20D5B2), width: 2)),
              child: Center(
                child: Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: Color(0xff20D5B2),
                ),
              ),
            ),
            done: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
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
                    "Done",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
        ));
  }
}
