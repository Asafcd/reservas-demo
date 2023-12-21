// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyone_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyone in the application.
class InicioDeSesiNSeventyoneState extends Equatable {
  InicioDeSesiNSeventyoneState({this.inicioDeSesiNSeventyoneModelObj});

  InicioDeSesiNSeventyoneModel? inicioDeSesiNSeventyoneModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventyoneModelObj,
      ];
  InicioDeSesiNSeventyoneState copyWith(
      {InicioDeSesiNSeventyoneModel? inicioDeSesiNSeventyoneModelObj}) {
    return InicioDeSesiNSeventyoneState(
      inicioDeSesiNSeventyoneModelObj: inicioDeSesiNSeventyoneModelObj ??
          this.inicioDeSesiNSeventyoneModelObj,
    );
  }
}
