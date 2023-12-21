// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seven_bloc.dart';

/// Represents the state of InicioDeSesiNSeven in the application.
class InicioDeSesiNSevenState extends Equatable {
  InicioDeSesiNSevenState({
    this.emailController,
    this.inicioDeSesiNSevenModelObj,
  });

  TextEditingController? emailController;

  InicioDeSesiNSevenModel? inicioDeSesiNSevenModelObj;

  @override
  List<Object?> get props => [
        emailController,
        inicioDeSesiNSevenModelObj,
      ];
  InicioDeSesiNSevenState copyWith({
    TextEditingController? emailController,
    InicioDeSesiNSevenModel? inicioDeSesiNSevenModelObj,
  }) {
    return InicioDeSesiNSevenState(
      emailController: emailController ?? this.emailController,
      inicioDeSesiNSevenModelObj:
          inicioDeSesiNSevenModelObj ?? this.inicioDeSesiNSevenModelObj,
    );
  }
}
