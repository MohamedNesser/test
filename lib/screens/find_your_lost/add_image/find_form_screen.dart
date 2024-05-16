import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../bloc/add_person_cubit/cubit.dart';
import '../../../bloc/add_person_cubit/state.dart';

class FormfindPersone extends StatefulWidget {
  FormfindPersone({Key? key}) : super(key: key);

  @override
  State<FormfindPersone> createState() => _FormAddPersoneState();
}

class _FormAddPersoneState extends State<FormfindPersone> {
  final _globalelkey = GlobalKey<FormState>();
  bool iswrite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocConsumer<AddPersonCubit, AddPersonState>(
            listener: (context, state) {
          if (state is AddPersonsucsess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("susccesssss")));
            Navigator.of(context).pop();
          } else if (state is AddPersonfaliouer) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("errrorrrrrrrrr")));
          }
        }, builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: _globalelkey,
              child: Column(
                children: [
                  Container(
                    width: 300.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please Enter name lost person ';
                        }
                        return null; // Return null if the input is valid.
                      },
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                      controller: context.read<AddPersonCubit>().nameController,
                      decoration: const InputDecoration(
                        prefixIcon:
                            Icon(Icons.person, color: Colors.blue, size: 40),
                        labelText: 'Enter name lost person ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        hoverColor: Colors.black,
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please Enter age for lost person ';
                        }
                        return null; // Return null if the input is valid.
                      },
                      controller: context.read<AddPersonCubit>().ageController,
                      decoration: const InputDecoration(
                        prefixIcon:
                            Icon(Icons.manage_search, color: Colors.blue, size: 40),
                        labelText: 'Enter age for lost person ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        hoverColor: Colors.red,
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please Enter Address  lost person ';
                        }
                        return null; // Return null if the input is valid.
                      },
                      controller: context.read<AddPersonCubit>().addressController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.location_on_outlined,
                            color: Colors.blue, size: 40),
                        labelText: 'Enter Address  lost person ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        hoverColor: Colors.red,
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please Enter contact mail';
                        }
                        return null; // Return null if the input is valid.
                      },
                      controller: context.read<AddPersonCubit>().emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.blue, size: 40),
                        labelText: 'Enter contact mail',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        hoverColor: Colors.red,
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please Enter contact phone';
                        }
                        return null; // Return null if the input is valid.
                      },
                      controller:
                          context.read<AddPersonCubit>().phonenumberController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.blue, size: 40),
                        labelText: 'Enter contact phone',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        hoverColor: Colors.red,
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 200.w,
                    child: state is AddPersonloaded
                        ? CircularProgressIndicator()
                        : MaterialButton(
                            onPressed: () {
                              context.read<AddPersonCubit>().uploadData(
                                  imagepaths: context
                                      .read<AddPersonCubit>()
                                      .pickedimages
                                      .map((e) => e.path)
                                      .toList());
                            },
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color.fromARGB(255, 37, 224, 209),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Confirm infromation ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
