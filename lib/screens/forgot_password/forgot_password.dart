import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/screens/forgot_password/form_forgot%20password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Stack(children: [
                  Image.asset("assets/images/Ellipse 19.png"),
                  Container(
                    margin: EdgeInsets.all(10.w),
                    child: Column(
                      children: [
                        Text(
                          "Forgot",
                          style: TextStyle(
                              color: Color(0x00000000ffFFFFFF),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0x00000000ffFFFFFF),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ])),
            Positioned(
                top: MediaQuery.of(context).size.height / 3.5,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Ellipse 18.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.8,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Ellipse 17.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.3,
                right: 0,
                left: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/Ellipse 16.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ])),
            Positioned(
                top: 40.h,
                right: 0,
                left: MediaQuery.of(context).size.width / 2.1,
                child: Image.asset(
                  "assets/images/321.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3,
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.1),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 80.h,
                          width: MediaQuery.of(context).size.height / 1,
                          child: Image.asset("assets/images/image1.png")),
                      FormForgotPassword(),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white),
                              Text(
                                "   Back to login ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 128, 125, 125)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
