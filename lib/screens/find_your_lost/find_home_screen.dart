import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newproject/bloc/add_person_cubit/cubit.dart';
import 'package:newproject/bloc/add_person_cubit/state.dart';
import 'package:newproject/screens/find_your_lost/add_image/find_form_screen.dart';

class FindHomeScren extends StatelessWidget {
  const FindHomeScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AddPersonCubit, AddPersonState>(
        listener: (BuildContext context, state) {},
        builder: (context, state) {
          return Scaffold(
              body: Stack(children: [
            Column(children: [
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/colloer1.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Image.asset(
                        "assets/images/paint.png",
                        fit: BoxFit.fitWidth,
                        width: 200,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "Help find me   ",
                        style: TextStyle(fontSize: 35.sp),
                      ),
                    ),
                  )
                ],
              )
            ]),
            Stack(
              children: [
                Positioned(
                  top: 70.h,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1,
                    width: MediaQuery.of(context).size.height / 1.9,
                    decoration: const BoxDecoration(
                      color: Color(0xFF151528),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(180.0),
                        topLeft: Radius.circular(180.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              5,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<AddPersonCubit>()
                                                  .piclistimage();
                                            },
                                            child: Image.asset(
                                              "assets/images/image-gallery 1.png",
                                            ),
                                          ),
                                          Text(
                                            "Add Images ",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width / 1.5,
              ),
              child: Center(child: FormfindPersone()),
            )
          ]));
        },
      ),
    );
  }
}
