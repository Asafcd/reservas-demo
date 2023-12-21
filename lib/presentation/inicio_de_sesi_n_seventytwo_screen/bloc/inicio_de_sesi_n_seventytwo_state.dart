// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventytwo_bloc.dart';

/// Represents the state of InicioDeSesiNSeventytwo in the application.
class InicioDeSesiNSeventytwoState extends Equatable {
  InicioDeSesiNSeventytwoState({this.inicioDeSesiNSeventytwoModelObj});

  InicioDeSesiNSeventytwoModel? inicioDeSesiNSeventytwoModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventytwoModelObj,
      ];
  InicioDeSesiNSeventytwoState copyWith(
      {InicioDeSesiNSeventytwoModel? inicioDeSesiNSeventytwoModelObj}) {
    return InicioDeSesiNSeventytwoState(
      inicioDeSesiNSeventytwoModelObj: inicioDeSesiNSeventytwoModelObj ??
          this.inicioDeSesiNSeventytwoModelObj,
    );
  }
}
