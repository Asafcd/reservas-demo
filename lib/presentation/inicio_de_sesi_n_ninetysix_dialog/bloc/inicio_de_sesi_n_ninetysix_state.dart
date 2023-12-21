// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetysix_bloc.dart';

/// Represents the state of InicioDeSesiNNinetysix in the application.
class InicioDeSesiNNinetysixState extends Equatable {
  InicioDeSesiNNinetysixState({this.inicioDeSesiNNinetysixModelObj});

  InicioDeSesiNNinetysixModel? inicioDeSesiNNinetysixModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNinetysixModelObj,
      ];
  InicioDeSesiNNinetysixState copyWith(
      {InicioDeSesiNNinetysixModel? inicioDeSesiNNinetysixModelObj}) {
    return InicioDeSesiNNinetysixState(
      inicioDeSesiNNinetysixModelObj:
          inicioDeSesiNNinetysixModelObj ?? this.inicioDeSesiNNinetysixModelObj,
    );
  }
}
