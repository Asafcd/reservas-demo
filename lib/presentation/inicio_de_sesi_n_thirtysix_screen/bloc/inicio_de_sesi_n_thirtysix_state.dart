// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtysix_bloc.dart';

/// Represents the state of InicioDeSesiNThirtysix in the application.
class InicioDeSesiNThirtysixState extends Equatable {
  InicioDeSesiNThirtysixState({
    this.invitadoCounter1Controller,
    this.invitadoCounter2Controller,
    this.invitadoCounter3Controller,
    this.invitadoCounter4Controller,
    this.invitadoCounter5Controller,
    this.inicioDeSesiNThirtysixModelObj,
  });

  TextEditingController? invitadoCounter1Controller;

  TextEditingController? invitadoCounter2Controller;

  TextEditingController? invitadoCounter3Controller;

  TextEditingController? invitadoCounter4Controller;

  TextEditingController? invitadoCounter5Controller;

  InicioDeSesiNThirtysixModel? inicioDeSesiNThirtysixModelObj;

  @override
  List<Object?> get props => [
        invitadoCounter1Controller,
        invitadoCounter2Controller,
        invitadoCounter3Controller,
        invitadoCounter4Controller,
        invitadoCounter5Controller,
        inicioDeSesiNThirtysixModelObj,
      ];
  InicioDeSesiNThirtysixState copyWith({
    TextEditingController? invitadoCounter1Controller,
    TextEditingController? invitadoCounter2Controller,
    TextEditingController? invitadoCounter3Controller,
    TextEditingController? invitadoCounter4Controller,
    TextEditingController? invitadoCounter5Controller,
    InicioDeSesiNThirtysixModel? inicioDeSesiNThirtysixModelObj,
  }) {
    return InicioDeSesiNThirtysixState(
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
      inicioDeSesiNThirtysixModelObj:
          inicioDeSesiNThirtysixModelObj ?? this.inicioDeSesiNThirtysixModelObj,
    );
  }
}
