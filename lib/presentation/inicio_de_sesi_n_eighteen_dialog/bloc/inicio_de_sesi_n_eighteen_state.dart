// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eighteen_bloc.dart';

/// Represents the state of InicioDeSesiNEighteen in the application.
class InicioDeSesiNEighteenState extends Equatable {
  InicioDeSesiNEighteenState({this.inicioDeSesiNEighteenModelObj});

  InicioDeSesiNEighteenModel? inicioDeSesiNEighteenModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNEighteenModelObj,
      ];
  InicioDeSesiNEighteenState copyWith(
      {InicioDeSesiNEighteenModel? inicioDeSesiNEighteenModelObj}) {
    return InicioDeSesiNEighteenState(
      inicioDeSesiNEighteenModelObj:
          inicioDeSesiNEighteenModelObj ?? this.inicioDeSesiNEighteenModelObj,
    );
  }
}
