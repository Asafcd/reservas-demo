// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyeight_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyeight in the application.
class InicioDeSesiNSeventyeightState extends Equatable {
  InicioDeSesiNSeventyeightState({this.inicioDeSesiNSeventyeightModelObj});

  InicioDeSesiNSeventyeightModel? inicioDeSesiNSeventyeightModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventyeightModelObj,
      ];
  InicioDeSesiNSeventyeightState copyWith(
      {InicioDeSesiNSeventyeightModel? inicioDeSesiNSeventyeightModelObj}) {
    return InicioDeSesiNSeventyeightState(
      inicioDeSesiNSeventyeightModelObj: inicioDeSesiNSeventyeightModelObj ??
          this.inicioDeSesiNSeventyeightModelObj,
    );
  }
}
