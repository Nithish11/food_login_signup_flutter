import 'package:flutter/material.dart';
import 'package:food_login_signup_screen/colors.dart';
import 'package:food_login_signup_screen/constants.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  bgImage,
                  height: height * 0.40,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.42,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.3, 0.7],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.white,
                          ])),
                ),
                Positioned(
                  bottom: 49,
                  left: 0,
                  right: 0,
                  child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,

                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                            ), 
                            text: "$appName\n",
                            children: [
                              TextSpan(text: slogan,style: TextStyle(color: Colors.grey, fontSize: 15))
                            ]
                            ))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          primaryColor.withOpacity(0.3),
                          Colors.transparent
                        ],
                      ),
                      border: const Border(
                          left: BorderSide(color: primaryColor, width: 5))),
                  child: const Text(
                    "  $loginString",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: primaryColor,
                    ),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: primaryColor,
                    ),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16)),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: const Text(forgetText))),
            Center(
                child: SizedBox(
              height: height * 0.07,
              width: width - 30,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor)),
                  child: const Text(
                    loginButton,
                    style: TextStyle(
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20),
                  )),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create Account",
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
