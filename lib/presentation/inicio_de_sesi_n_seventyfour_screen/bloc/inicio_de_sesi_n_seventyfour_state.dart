// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyfour_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyfour in the application.
class InicioDeSesiNSeventyfourState extends Equatable {
  InicioDeSesiNSeventyfourState({this.inicioDeSesiNSeventyfourModelObj});

  InicioDeSesiNSeventyfourModel? inicioDeSesiNSeventyfourModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventyfourModelObj,
      ];
  InicioDeSesiNSeventyfourState copyWith(
      {InicioDeSesiNSeventyfourModel? inicioDeSesiNSeventyfourModelObj}) {
    return InicioDeSesiNSeventyfourState(
      inicioDeSesiNSeventyfourModelObj: inicioDeSesiNSeventyfourModelObj ??
          this.inicioDeSesiNSeventyfourModelObj,
    );
  }
}
