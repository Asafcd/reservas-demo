// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_two_bloc.dart';

/// Represents the state of InicioDeSesiNTwo in the application.
class InicioDeSesiNTwoState extends Equatable {
  InicioDeSesiNTwoState({
    this.emailController,
    this.passwordController,
    this.inicioDeSesiNTwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  InicioDeSesiNTwoModel? inicioDeSesiNTwoModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        inicioDeSesiNTwoModelObj,
      ];
  InicioDeSesiNTwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    InicioDeSesiNTwoModel? inicioDeSesiNTwoModelObj,
  }) {
    return InicioDeSesiNTwoState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      inicioDeSesiNTwoModelObj:
          inicioDeSesiNTwoModelObj ?? this.inicioDeSesiNTwoModelObj,
    );
  }
}
