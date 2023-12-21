// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_three_bloc.dart';

/// Represents the state of InicioDeSesiNThree in the application.
class InicioDeSesiNThreeState extends Equatable {
  InicioDeSesiNThreeState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.inicioDeSesiNThreeModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  InicioDeSesiNThreeModel? inicioDeSesiNThreeModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        inicioDeSesiNThreeModelObj,
      ];
  InicioDeSesiNThreeState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    InicioDeSesiNThreeModel? inicioDeSesiNThreeModelObj,
  }) {
    return InicioDeSesiNThreeState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      inicioDeSesiNThreeModelObj:
          inicioDeSesiNThreeModelObj ?? this.inicioDeSesiNThreeModelObj,
    );
  }
}
