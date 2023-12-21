// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyseven_bloc.dart';

/// Represents the state of InicioDeSesiNSixtyseven in the application.
class InicioDeSesiNSixtysevenState extends Equatable {
  InicioDeSesiNSixtysevenState({
    this.invitadoCounterCarolinaInurretaController,
    this.invitadoCounterJosInurretaTamaiController,
    this.invitadoCounterAnaBelNInurretaController,
    this.invitadoCounterJenniferHernandezController,
    this.invitadoCounterDavidInurretaGomezController,
    this.inicioDeSesiNSixtysevenModelObj,
  });

  TextEditingController? invitadoCounterCarolinaInurretaController;

  TextEditingController? invitadoCounterJosInurretaTamaiController;

  TextEditingController? invitadoCounterAnaBelNInurretaController;

  TextEditingController? invitadoCounterJenniferHernandezController;

  TextEditingController? invitadoCounterDavidInurretaGomezController;

  InicioDeSesiNSixtysevenModel? inicioDeSesiNSixtysevenModelObj;

  @override
  List<Object?> get props => [
        invitadoCounterCarolinaInurretaController,
        invitadoCounterJosInurretaTamaiController,
        invitadoCounterAnaBelNInurretaController,
        invitadoCounterJenniferHernandezController,
        invitadoCounterDavidInurretaGomezController,
        inicioDeSesiNSixtysevenModelObj,
      ];
  InicioDeSesiNSixtysevenState copyWith({
    TextEditingController? invitadoCounterCarolinaInurretaController,
    TextEditingController? invitadoCounterJosInurretaTamaiController,
    TextEditingController? invitadoCounterAnaBelNInurretaController,
    TextEditingController? invitadoCounterJenniferHernandezController,
    TextEditingController? invitadoCounterDavidInurretaGomezController,
    InicioDeSesiNSixtysevenModel? inicioDeSesiNSixtysevenModelObj,
  }) {
    return InicioDeSesiNSixtysevenState(
      invitadoCounterCarolinaInurretaController:
          invitadoCounterCarolinaInurretaController ??
              this.invitadoCounterCarolinaInurretaController,
      invitadoCounterJosInurretaTamaiController:
          invitadoCounterJosInurretaTamaiController ??
              this.invitadoCounterJosInurretaTamaiController,
      invitadoCounterAnaBelNInurretaController:
          invitadoCounterAnaBelNInurretaController ??
              this.invitadoCounterAnaBelNInurretaController,
      invitadoCounterJenniferHernandezController:
          invitadoCounterJenniferHernandezController ??
              this.invitadoCounterJenniferHernandezController,
      invitadoCounterDavidInurretaGomezController:
          invitadoCounterDavidInurretaGomezController ??
              this.invitadoCounterDavidInurretaGomezController,
      inicioDeSesiNSixtysevenModelObj: inicioDeSesiNSixtysevenModelObj ??
          this.inicioDeSesiNSixtysevenModelObj,
    );
  }
}
