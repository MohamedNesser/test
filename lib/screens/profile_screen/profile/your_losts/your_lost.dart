import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourLosts extends StatelessWidget {
  const YourLosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color(0xFF151528),
                      onPressed: () {},
                      child: Text(
                        "Your losts",
                        style: TextStyle(fontSize: 24.sp, color: Colors.white),
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
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF151528),
                                borderRadius: BorderRadius.circular(40)),
                            height: 150.h,
                            width: 260.w,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/child1.png"),
                                        Image.asset("assets/images/child2.png")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/child3.png"),
                                        Image.asset("assets/images/child4.png")
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name : mohamed",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Addres : abo kaber",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Phone : 01032100319",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Email : ahmed@gamil.com",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Age : 9",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 40,
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.mode_edit_outline_outlined,
                                              color: Colors.blue,
                                            )),
                                        Container(
                                          height: 26.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: MaterialButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            color: Color(0xFF50C0E1),
                                            onPressed: () {},
                                            child: Text(
                                              " found ",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.white),
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
  }
}
