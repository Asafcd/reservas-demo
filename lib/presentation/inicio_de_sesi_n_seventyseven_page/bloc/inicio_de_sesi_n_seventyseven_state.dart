// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyseven_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyseven in the application.
class InicioDeSesiNSeventysevenState extends Equatable {
  InicioDeSesiNSeventysevenState({this.inicioDeSesiNSeventysevenModelObj});

  InicioDeSesiNSeventysevenModel? inicioDeSesiNSeventysevenModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventysevenModelObj,
      ];
  InicioDeSesiNSeventysevenState copyWith(
      {InicioDeSesiNSeventysevenModel? inicioDeSesiNSeventysevenModelObj}) {
    return InicioDeSesiNSeventysevenState(
      inicioDeSesiNSeventysevenModelObj: inicioDeSesiNSeventysevenModelObj ??
          this.inicioDeSesiNSeventysevenModelObj,
    );
  }
}
