import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newproject/bloc/mylost/cubit/mylost_state.dart';
import 'package:newproject/data/api_services/api_servicese.dart';
import 'package:newproject/data/errors/server_excaption.dart';
import 'package:newproject/data/model/mylost_model/mylost.dart';
import 'package:newproject/data/model/search_model/result_model.dart';


class MyLostCubit extends Cubit<MyLostState> {
  MyLostCubit(
    this.api,
  ) : super(MyLostInitial());
  final ApiServices api;
  Mylost? listlostes;
  // ignore: non_constant_identifier_names
  Future GetMyLost() async {
    try {
      emit(MyLostloaded());

      final response = await api.get(
        'https://lostcal.onrender.com/api/mylost',
      );

      emit(MyLostseacsess(mylost: SerachModel.fromJson(response)));
      return response;
    } on ServerException catch (e) {
      emit(MyLostfaliouer(errormassage: e.errorsearch.message!));
    }
  }
}
