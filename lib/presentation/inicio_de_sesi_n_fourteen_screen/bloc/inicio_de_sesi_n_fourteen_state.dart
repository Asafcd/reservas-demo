// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fourteen_bloc.dart';

/// Represents the state of InicioDeSesiNFourteen in the application.
class InicioDeSesiNFourteenState extends Equatable {
  InicioDeSesiNFourteenState({
    this.emailController,
    this.passwordController,
    this.confirmPasswordController,
    this.inicioDeSesiNFourteenModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  InicioDeSesiNFourteenModel? inicioDeSesiNFourteenModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        confirmPasswordController,
        inicioDeSesiNFourteenModelObj,
      ];
  InicioDeSesiNFourteenState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    InicioDeSesiNFourteenModel? inicioDeSesiNFourteenModelObj,
  }) {
    return InicioDeSesiNFourteenState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      inicioDeSesiNFourteenModelObj:
          inicioDeSesiNFourteenModelObj ?? this.inicioDeSesiNFourteenModelObj,
    );
  }
}
