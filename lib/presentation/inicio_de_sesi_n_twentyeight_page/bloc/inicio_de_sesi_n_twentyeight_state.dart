// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyeight_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyeight in the application.
class InicioDeSesiNTwentyeightState extends Equatable {
  InicioDeSesiNTwentyeightState({this.inicioDeSesiNTwentyeightModelObj});

  InicioDeSesiNTwentyeightModel? inicioDeSesiNTwentyeightModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNTwentyeightModelObj,
      ];
  InicioDeSesiNTwentyeightState copyWith(
      {InicioDeSesiNTwentyeightModel? inicioDeSesiNTwentyeightModelObj}) {
    return InicioDeSesiNTwentyeightState(
      inicioDeSesiNTwentyeightModelObj: inicioDeSesiNTwentyeightModelObj ??
          this.inicioDeSesiNTwentyeightModelObj,
    );
  }
}
