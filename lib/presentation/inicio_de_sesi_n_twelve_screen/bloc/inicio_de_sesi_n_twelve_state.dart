// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twelve_bloc.dart';

/// Represents the state of InicioDeSesiNTwelve in the application.
class InicioDeSesiNTwelveState extends Equatable {
  InicioDeSesiNTwelveState({
    this.newPasswordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.inicioDeSesiNTwelveModelObj,
  });

  TextEditingController? newPasswordController;

  TextEditingController? confirmPasswordController;

  InicioDeSesiNTwelveModel? inicioDeSesiNTwelveModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newPasswordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        inicioDeSesiNTwelveModelObj,
      ];
  InicioDeSesiNTwelveState copyWith({
    TextEditingController? newPasswordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    InicioDeSesiNTwelveModel? inicioDeSesiNTwelveModelObj,
  }) {
    return InicioDeSesiNTwelveState(
      newPasswordController:
          newPasswordController ?? this.newPasswordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      inicioDeSesiNTwelveModelObj:
          inicioDeSesiNTwelveModelObj ?? this.inicioDeSesiNTwelveModelObj,
    );
  }
}
