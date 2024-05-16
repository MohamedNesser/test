import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/bloc/login_cubit/login_cubit.dart';
import 'package:newproject/user/user_screen.dart';

class FormUpdatePassword extends StatefulWidget {
  FormUpdatePassword({Key? key}) : super(key: key);

  @override
  State<FormUpdatePassword> createState() => _FormUpdatePasswordState();
}

class _FormUpdatePasswordState extends State<FormUpdatePassword> {
  final _globalekey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Loginsucsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" التسجيل بنجاح")));
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BottomNavBarscreen()));
        } else if (state is Loginfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Column(children: [
              Text(
                "New password                  ",
                style: TextStyle(
                    fontSize: 18.sp, color: Color(0x00000000ffE9E9E9)),
              ),
              SizedBox(height: 5.h),
              Form(
                  key: _globalekey,
                  child: Column(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: MediaQuery.of(context).size.width / 7,
                      child: TextFormField(
                        validator: (value) {
                          // You can define validation rules for the input field.
                          if (value!.isEmpty) {
                            return 'Please enter your New password';
                          }
                          return null; // Return null if the input is valid.
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Type here',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      textAlign: TextAlign.left,
                      "Confirm password          ",
                      style: TextStyle(
                          fontSize: 20.sp, color: Color(0x00000000ffE9E9E9)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: MediaQuery.of(context).size.width / 7,
                      child: TextFormField(
                        validator: (value) {
                          // You can define validation rules for the input field.
                          if (value!.isEmpty) {
                            return 'Please enter your Confirm password';
                          }
                          return null; // Return null if the input is valid.
                        },
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Type here',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: MaterialButton(
                        onPressed: () {
                          if (_globalekey.currentState!.validate()) {
                            context.read<LoginCubit>().login();
                          }
                        },
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Change password",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]))
            ]),
          ],
        );
      },
    );
  }
}
