// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyseven_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyseven in the application.
class InicioDeSesiNTwentysevenState extends Equatable {
  InicioDeSesiNTwentysevenState({this.inicioDeSesiNTwentysevenModelObj});

  InicioDeSesiNTwentysevenModel? inicioDeSesiNTwentysevenModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNTwentysevenModelObj,
      ];
  InicioDeSesiNTwentysevenState copyWith(
      {InicioDeSesiNTwentysevenModel? inicioDeSesiNTwentysevenModelObj}) {
    return InicioDeSesiNTwentysevenState(
      inicioDeSesiNTwentysevenModelObj: inicioDeSesiNTwentysevenModelObj ??
          this.inicioDeSesiNTwentysevenModelObj,
    );
  }
}
