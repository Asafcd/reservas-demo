// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyseven_bloc.dart';

/// Represents the state of InicioDeSesiNThirtyseven in the application.
class InicioDeSesiNThirtysevenState extends Equatable {
  InicioDeSesiNThirtysevenState({
    this.invitadoCounterCarolinaInurretaController,
    this.invitadoCounterJosInurretaTamaiController,
    this.invitadoCounterAnaBelNInurretaController,
    this.invitadoCounterJenniferHernNdezController,
    this.invitadoCounterDavidInurretaGMezController,
    this.inicioDeSesiNThirtysevenModelObj,
  });

  TextEditingController? invitadoCounterCarolinaInurretaController;

  TextEditingController? invitadoCounterJosInurretaTamaiController;

  TextEditingController? invitadoCounterAnaBelNInurretaController;

  TextEditingController? invitadoCounterJenniferHernNdezController;

  TextEditingController? invitadoCounterDavidInurretaGMezController;

  InicioDeSesiNThirtysevenModel? inicioDeSesiNThirtysevenModelObj;

  @override
  List<Object?> get props => [
        invitadoCounterCarolinaInurretaController,
        invitadoCounterJosInurretaTamaiController,
        invitadoCounterAnaBelNInurretaController,
        invitadoCounterJenniferHernNdezController,
        invitadoCounterDavidInurretaGMezController,
        inicioDeSesiNThirtysevenModelObj,
      ];
  InicioDeSesiNThirtysevenState copyWith({
    TextEditingController? invitadoCounterCarolinaInurretaController,
    TextEditingController? invitadoCounterJosInurretaTamaiController,
    TextEditingController? invitadoCounterAnaBelNInurretaController,
    TextEditingController? invitadoCounterJenniferHernNdezController,
    TextEditingController? invitadoCounterDavidInurretaGMezController,
    InicioDeSesiNThirtysevenModel? inicioDeSesiNThirtysevenModelObj,
  }) {
    return InicioDeSesiNThirtysevenState(
      invitadoCounterCarolinaInurretaController:
          invitadoCounterCarolinaInurretaController ??
              this.invitadoCounterCarolinaInurretaController,
      invitadoCounterJosInurretaTamaiController:
          invitadoCounterJosInurretaTamaiController ??
              this.invitadoCounterJosInurretaTamaiController,
      invitadoCounterAnaBelNInurretaController:
          invitadoCounterAnaBelNInurretaController ??
              this.invitadoCounterAnaBelNInurretaController,
      invitadoCounterJenniferHernNdezController:
          invitadoCounterJenniferHernNdezController ??
              this.invitadoCounterJenniferHernNdezController,
      invitadoCounterDavidInurretaGMezController:
          invitadoCounterDavidInurretaGMezController ??
              this.invitadoCounterDavidInurretaGMezController,
      inicioDeSesiNThirtysevenModelObj: inicioDeSesiNThirtysevenModelObj ??
          this.inicioDeSesiNThirtysevenModelObj,
    );
  }
}
