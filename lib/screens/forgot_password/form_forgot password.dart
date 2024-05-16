import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/forget_password/cubit/forget_password_cubit.dart';

class FormForgotPassword extends StatefulWidget {
  FormForgotPassword({Key? key}) : super(key: key);

  @override
  State<FormForgotPassword> createState() => _FormForgotPasswordState();
}

final _globalekey = GlobalKey<FormState>();
bool _obscureText = true;

class _FormForgotPasswordState extends State<FormForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordseacsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.massage)));
        } else if (state is ForgetPasswordfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Column(children: [
              Center(
                child: Text(
                  "Enter your email and we will send you a link to reset your password                ",
                  style: TextStyle(
                      fontSize: 18.sp, color: Color(0x00000000ffE9E9E9)),
                ),
              ),
              SizedBox(height: 5.h),
              Form(
                  key: _globalekey,
                  child: Column(children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      textAlign: TextAlign.left,
                      "Email                   ",
                      style: TextStyle(
                          fontSize: 20.sp, color: Color(0x00000000ffE9E9E9)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: MediaQuery.of(context).size.width / 7,
                      child: TextFormField(
                        controller:
                            context.read<ForgetPasswordCubit>().emailcontroller,
                        validator: (value) {
                          // You can define validation rules for the input field.
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
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
                            context
                                .read<ForgetPasswordCubit>()
                                .ForgetPassword();
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
                              state is ForgetPasswordloaded
                                  ? Text("Loading.....")
                                  : Text(
                                      "Submit",
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
