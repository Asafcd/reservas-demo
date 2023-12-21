// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventy_bloc.dart';

/// Represents the state of InicioDeSesiNSeventy in the application.
class InicioDeSesiNSeventyState extends Equatable {
  InicioDeSesiNSeventyState({this.inicioDeSesiNSeventyModelObj});

  InicioDeSesiNSeventyModel? inicioDeSesiNSeventyModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventyModelObj,
      ];
  InicioDeSesiNSeventyState copyWith(
      {InicioDeSesiNSeventyModel? inicioDeSesiNSeventyModelObj}) {
    return InicioDeSesiNSeventyState(
      inicioDeSesiNSeventyModelObj:
          inicioDeSesiNSeventyModelObj ?? this.inicioDeSesiNSeventyModelObj,
    );
  }
}
