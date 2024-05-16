

import 'package:equatable/equatable.dart';

sealed class MatchesState extends Equatable {
  const MatchesState();

  @override
  List<Object> get props => [];
}

final class MatchesInitial extends MatchesState {}

class matchesloaded extends MatchesState {}

class mathcesseacsess extends MatchesState {

}

class matchesfaliouer extends MatchesState {
  String errormassage;
matchesfaliouer({
    required this.errormassage,
  });
}
