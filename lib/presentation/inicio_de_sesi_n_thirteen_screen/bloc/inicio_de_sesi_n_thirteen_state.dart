// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirteen_bloc.dart';

/// Represents the state of InicioDeSesiNThirteen in the application.
class InicioDeSesiNThirteenState extends Equatable {
  InicioDeSesiNThirteenState({
    this.newPasswordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.inicioDeSesiNThirteenModelObj,
  });

  TextEditingController? newPasswordController;

  TextEditingController? confirmPasswordController;

  InicioDeSesiNThirteenModel? inicioDeSesiNThirteenModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newPasswordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        inicioDeSesiNThirteenModelObj,
      ];
  InicioDeSesiNThirteenState copyWith({
    TextEditingController? newPasswordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    InicioDeSesiNThirteenModel? inicioDeSesiNThirteenModelObj,
  }) {
    return InicioDeSesiNThirteenState(
      newPasswordController:
          newPasswordController ?? this.newPasswordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      inicioDeSesiNThirteenModelObj:
          inicioDeSesiNThirteenModelObj ?? this.inicioDeSesiNThirteenModelObj,
    );
  }
}
