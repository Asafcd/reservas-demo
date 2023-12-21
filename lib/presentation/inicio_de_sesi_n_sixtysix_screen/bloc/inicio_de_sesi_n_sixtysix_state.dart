// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtysix_bloc.dart';

/// Represents the state of InicioDeSesiNSixtysix in the application.
class InicioDeSesiNSixtysixState extends Equatable {
  InicioDeSesiNSixtysixState({
    this.invitadoCounter1Controller,
    this.invitadoCounter2Controller,
    this.invitadoCounter3Controller,
    this.invitadoCounter4Controller,
    this.invitadoCounter5Controller,
    this.inicioDeSesiNSixtysixModelObj,
  });

  TextEditingController? invitadoCounter1Controller;

  TextEditingController? invitadoCounter2Controller;

  TextEditingController? invitadoCounter3Controller;

  TextEditingController? invitadoCounter4Controller;

  TextEditingController? invitadoCounter5Controller;

  InicioDeSesiNSixtysixModel? inicioDeSesiNSixtysixModelObj;

  @override
  List<Object?> get props => [
        invitadoCounter1Controller,
        invitadoCounter2Controller,
        invitadoCounter3Controller,
        invitadoCounter4Controller,
        invitadoCounter5Controller,
        inicioDeSesiNSixtysixModelObj,
      ];
  InicioDeSesiNSixtysixState copyWith({
    TextEditingController? invitadoCounter1Controller,
    TextEditingController? invitadoCounter2Controller,
    TextEditingController? invitadoCounter3Controller,
    TextEditingController? invitadoCounter4Controller,
    TextEditingController? invitadoCounter5Controller,
    InicioDeSesiNSixtysixModel? inicioDeSesiNSixtysixModelObj,
  }) {
    return InicioDeSesiNSixtysixState(
      invitadoCounter1Controller:
          invitadoCounter1Controller ?? this.invitadoCounter1Controller,
      invitadoCounter2Controller:
          invitadoCounter2Controller ?? this.invitadoCounter2Controller,
      invitadoCounter3Controller:
          invitadoCounter3Controller ?? this.invitadoCounter3Controller,
      invitadoCounter4Controller:
          invitadoCounter4Controller ?? this.invitadoCounter4Controller,
      invitadoCounter5Controller:
          invitadoCounter5Controller ?? this.invitadoCounter5Controller,
      inicioDeSesiNSixtysixModelObj:
          inicioDeSesiNSixtysixModelObj ?? this.inicioDeSesiNSixtysixModelObj,
    );
  }
}
