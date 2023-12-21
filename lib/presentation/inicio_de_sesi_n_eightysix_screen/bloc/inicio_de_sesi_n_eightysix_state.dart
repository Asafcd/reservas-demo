// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightysix_bloc.dart';

/// Represents the state of InicioDeSesiNEightysix in the application.
class InicioDeSesiNEightysixState extends Equatable {
  InicioDeSesiNEightysixState({this.inicioDeSesiNEightysixModelObj});

  InicioDeSesiNEightysixModel? inicioDeSesiNEightysixModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNEightysixModelObj,
      ];
  InicioDeSesiNEightysixState copyWith(
      {InicioDeSesiNEightysixModel? inicioDeSesiNEightysixModelObj}) {
    return InicioDeSesiNEightysixState(
      inicioDeSesiNEightysixModelObj:
          inicioDeSesiNEightysixModelObj ?? this.inicioDeSesiNEightysixModelObj,
    );
  }
}
