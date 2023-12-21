// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyeight_bloc.dart';

/// Represents the state of InicioDeSesiNThirtyeight in the application.
class InicioDeSesiNThirtyeightState extends Equatable {
  InicioDeSesiNThirtyeightState({this.inicioDeSesiNThirtyeightModelObj});

  InicioDeSesiNThirtyeightModel? inicioDeSesiNThirtyeightModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNThirtyeightModelObj,
      ];
  InicioDeSesiNThirtyeightState copyWith(
      {InicioDeSesiNThirtyeightModel? inicioDeSesiNThirtyeightModelObj}) {
    return InicioDeSesiNThirtyeightState(
      inicioDeSesiNThirtyeightModelObj: inicioDeSesiNThirtyeightModelObj ??
          this.inicioDeSesiNThirtyeightModelObj,
    );
  }
}
