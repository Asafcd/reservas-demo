// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetyfour_bloc.dart';

/// Represents the state of InicioDeSesiNNinetyfour in the application.
class InicioDeSesiNNinetyfourState extends Equatable {
  InicioDeSesiNNinetyfourState({this.inicioDeSesiNNinetyfourModelObj});

  InicioDeSesiNNinetyfourModel? inicioDeSesiNNinetyfourModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNinetyfourModelObj,
      ];
  InicioDeSesiNNinetyfourState copyWith(
      {InicioDeSesiNNinetyfourModel? inicioDeSesiNNinetyfourModelObj}) {
    return InicioDeSesiNNinetyfourState(
      inicioDeSesiNNinetyfourModelObj: inicioDeSesiNNinetyfourModelObj ??
          this.inicioDeSesiNNinetyfourModelObj,
    );
  }
}
