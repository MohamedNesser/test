import 'package:flutter/material.dart';
import 'package:newproject/data/model/profile/profile_model.dart';

@immutable
sealed class UpDateNameState {}

final class UpDateNametInitial extends UpDateNameState {}

class UpDateNameloaded extends UpDateNameState {}

class UpDateNameseacsess extends UpDateNameState {}

class UpDateNamefaliouer extends UpDateNameState {
  String errormassage;
  UpDateNamefaliouer({
    required this.errormassage,
  });
}

class Profileloaded extends UpDateNameState {}

class Profileseacsess extends UpDateNameState {
  final Profile profilemodel;

  Profileseacsess({required this.profilemodel});
}

class Profilefaliouer extends UpDateNameState {
  String errormassage;
  Profilefaliouer({
    required this.errormassage,
  });
}
