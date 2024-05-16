import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../bloc/mylost/cubit/mylost_cubit.dart';
import '../../../../bloc/mylost/cubit/mylost_state.dart';

class YourFound extends StatelessWidget {
  const YourFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyLostCubit, MyLostState>(
      listener: (context, state) {
        if (state is MyLostseacsess) {
          print(state.mylost.result);
        } else if (state is MyLostfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" pleas Login agin ")));
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: state is MyLostloaded
              ? Container(
                  child: Text("blesssssssss waite........."),
                )
              : Scaffold(
                  backgroundColor: Color(0xFF151528),
                  body: Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Colors.white,
                                onPressed: () {
                                  context.read<MyLostCubit>().GetMyLost();
                                },
                                child: Text(
                                  "Your founds",
                                  style: TextStyle(
                                      fontSize: 20.sp, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      height: 150.h,
                                      width: 260.w,
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                height: 0,
                                              ),
                                              Image.asset(
                                                "assets/images/child1.png",
                                                fit: BoxFit.fill,
                                                height: 130,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Name : ${state is MyLostseacsess ? state.mylost.result![index].name : "name"}",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "Addres : abo kaber",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "Phone : 01032100319",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "Email : ahmed@gamil.com",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "Age : 9",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons
                                                            .mode_edit_outline_outlined,
                                                        color: Colors.blue,
                                                      )),
                                                  Container(
                                                    height: 26.h,
                                                    width: 60.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: MaterialButton(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      color: Color(0xFF50C0E1),
                                                      onPressed: () {},
                                                      child: Text(
                                                        " found ",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
