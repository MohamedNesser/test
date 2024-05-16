import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class yourMatches extends StatelessWidget {
  const yourMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Image.asset(
            "assets/images/matches.png",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 1,
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color(0xff50C0E1),
            onPressed: () {},
            child: Text(
              "Matches",
              style: TextStyle(fontSize: 20.sp, color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        height: 150.h,
                        width: 260.w,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 0,
                                ),
                                Image.asset(
                                  "assets/images/child1.png",
                                  fit: BoxFit.fill,
                                  height: 160,
                                  width: 40,
                                ),
                                Image.asset(
                                  "assets/images/child1.png",
                                  fit: BoxFit.fill,
                                  height: 160,
                                  width: 40,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name : name",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "Addres : abo kaber",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "Phone : 01032100319",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "Email : ahmed@gamil.com",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "Age : 9",
                                  style: TextStyle(color: Colors.black),
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
        ]),
      ),
    );
  }
}
