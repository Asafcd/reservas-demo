// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twenty_bloc.dart';

/// Represents the state of InicioDeSesiNTwenty in the application.
class InicioDeSesiNTwentyState extends Equatable {
  InicioDeSesiNTwentyState({this.inicioDeSesiNTwentyModelObj});

  InicioDeSesiNTwentyModel? inicioDeSesiNTwentyModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNTwentyModelObj,
      ];
  InicioDeSesiNTwentyState copyWith(
      {InicioDeSesiNTwentyModel? inicioDeSesiNTwentyModelObj}) {
    return InicioDeSesiNTwentyState(
      inicioDeSesiNTwentyModelObj:
          inicioDeSesiNTwentyModelObj ?? this.inicioDeSesiNTwentyModelObj,
    );
  }
}
