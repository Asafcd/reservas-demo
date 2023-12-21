// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_forty_bloc.dart';

/// Represents the state of InicioDeSesiNForty in the application.
class InicioDeSesiNFortyState extends Equatable {
  InicioDeSesiNFortyState({this.inicioDeSesiNFortyModelObj});

  InicioDeSesiNFortyModel? inicioDeSesiNFortyModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFortyModelObj,
      ];
  InicioDeSesiNFortyState copyWith(
      {InicioDeSesiNFortyModel? inicioDeSesiNFortyModelObj}) {
    return InicioDeSesiNFortyState(
      inicioDeSesiNFortyModelObj:
          inicioDeSesiNFortyModelObj ?? this.inicioDeSesiNFortyModelObj,
    );
  }
}
