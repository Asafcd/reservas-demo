// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetyseven_bloc.dart';

/// Represents the state of InicioDeSesiNNinetyseven in the application.
class InicioDeSesiNNinetysevenState extends Equatable {
  InicioDeSesiNNinetysevenState({this.inicioDeSesiNNinetysevenModelObj});

  InicioDeSesiNNinetysevenModel? inicioDeSesiNNinetysevenModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNinetysevenModelObj,
      ];
  InicioDeSesiNNinetysevenState copyWith(
      {InicioDeSesiNNinetysevenModel? inicioDeSesiNNinetysevenModelObj}) {
    return InicioDeSesiNNinetysevenState(
      inicioDeSesiNNinetysevenModelObj: inicioDeSesiNNinetysevenModelObj ??
          this.inicioDeSesiNNinetysevenModelObj,
    );
  }
}
