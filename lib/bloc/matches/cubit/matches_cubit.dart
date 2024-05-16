// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newproject/bloc/matches/cubit/matches_state.dart';

import 'package:newproject/data/api_services/api_servicese.dart';
import 'package:newproject/data/errors/server_excaption.dart';


class MatchesCubit extends Cubit<MatchesState> {
  MatchesCubit(
    this.api,
  ) : super(MatchesInitial());

  final ApiServices api;
  Future GitProfile() async {
    try {
      emit(matchesloaded());

      final response = await api.get(
        "https://lostcal.onrender.com/api/mylost/allMatches",
      );
      emit(mathcesseacsess());
      return response;
    } on ServerException catch (e) {
      emit(matchesfaliouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }
}
