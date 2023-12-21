// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eleven_bloc.dart';

/// Represents the state of InicioDeSesiNEleven in the application.
class InicioDeSesiNElevenState extends Equatable {
  InicioDeSesiNElevenState({
    this.newPasswordController,
    this.confirmPasswordController,
    this.inicioDeSesiNElevenModelObj,
  });

  TextEditingController? newPasswordController;

  TextEditingController? confirmPasswordController;

  InicioDeSesiNElevenModel? inicioDeSesiNElevenModelObj;

  @override
  List<Object?> get props => [
        newPasswordController,
        confirmPasswordController,
        inicioDeSesiNElevenModelObj,
      ];
  InicioDeSesiNElevenState copyWith({
    TextEditingController? newPasswordController,
    TextEditingController? confirmPasswordController,
    InicioDeSesiNElevenModel? inicioDeSesiNElevenModelObj,
  }) {
    return InicioDeSesiNElevenState(
      newPasswordController:
          newPasswordController ?? this.newPasswordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      inicioDeSesiNElevenModelObj:
          inicioDeSesiNElevenModelObj ?? this.inicioDeSesiNElevenModelObj,
    );
  }
}
