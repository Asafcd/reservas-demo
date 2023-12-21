// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fifteen_bloc.dart';

/// Represents the state of InicioDeSesiNFifteen in the application.
class InicioDeSesiNFifteenState extends Equatable {
  InicioDeSesiNFifteenState({
    this.emailController,
    this.passwordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.inicioDeSesiNFifteenModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  InicioDeSesiNFifteenModel? inicioDeSesiNFifteenModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        inicioDeSesiNFifteenModelObj,
      ];
  InicioDeSesiNFifteenState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    InicioDeSesiNFifteenModel? inicioDeSesiNFifteenModelObj,
  }) {
    return InicioDeSesiNFifteenState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      inicioDeSesiNFifteenModelObj:
          inicioDeSesiNFifteenModelObj ?? this.inicioDeSesiNFifteenModelObj,
    );
  }
}
