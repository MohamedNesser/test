import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/screens/signup_screen/form_signup.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              top: 0,
              left: 0,
              child: Stack(children: [
                Image.asset(
                  "assets/images/Ellipse 19.png",
                  height: 150.h,
                ),
                Container(
                  margin: EdgeInsets.all(20.w),
                  child: Text(
                    "Sign up ",
                    style: TextStyle(
                      color: Color(0x00000000ffFFFFFF),
                      fontSize: 38.sp,
                    ),
                  ),
                )
              ])),
          Positioned(
              top: 20.h,
              right: 10,
              child: Image.asset(
                "assets/images/remove2.png",
                height: 200.h,
                fit: BoxFit.fill,
              )),
          Stack(children: [
            Positioned(
                top: MediaQuery.of(context).size.height / 3.5,
                right: 0,
                left: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/Ellipse 16.png",
                      height: MediaQuery.of(context).size.height * .80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ])),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.5),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/image1.png",
                        height: 70.h,
                      ),
                      FormSiginup(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Or Have anAccount",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
