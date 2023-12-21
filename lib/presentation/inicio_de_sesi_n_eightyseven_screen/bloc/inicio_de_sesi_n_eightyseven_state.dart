// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyseven_bloc.dart';

/// Represents the state of InicioDeSesiNEightyseven in the application.
class InicioDeSesiNEightysevenState extends Equatable {
  InicioDeSesiNEightysevenState({this.inicioDeSesiNEightysevenModelObj});

  InicioDeSesiNEightysevenModel? inicioDeSesiNEightysevenModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNEightysevenModelObj,
      ];
  InicioDeSesiNEightysevenState copyWith(
      {InicioDeSesiNEightysevenModel? inicioDeSesiNEightysevenModelObj}) {
    return InicioDeSesiNEightysevenState(
      inicioDeSesiNEightysevenModelObj: inicioDeSesiNEightysevenModelObj ??
          this.inicioDeSesiNEightysevenModelObj,
    );
  }
}
