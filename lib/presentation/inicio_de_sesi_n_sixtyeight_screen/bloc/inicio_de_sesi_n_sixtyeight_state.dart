// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyeight_bloc.dart';

/// Represents the state of InicioDeSesiNSixtyeight in the application.
class InicioDeSesiNSixtyeightState extends Equatable {
  InicioDeSesiNSixtyeightState({this.inicioDeSesiNSixtyeightModelObj});

  InicioDeSesiNSixtyeightModel? inicioDeSesiNSixtyeightModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSixtyeightModelObj,
      ];
  InicioDeSesiNSixtyeightState copyWith(
      {InicioDeSesiNSixtyeightModel? inicioDeSesiNSixtyeightModelObj}) {
    return InicioDeSesiNSixtyeightState(
      inicioDeSesiNSixtyeightModelObj: inicioDeSesiNSixtyeightModelObj ??
          this.inicioDeSesiNSixtyeightModelObj,
    );
  }
}
