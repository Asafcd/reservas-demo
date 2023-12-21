// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eight_bloc.dart';

/// Represents the state of InicioDeSesiNEight in the application.
class InicioDeSesiNEightState extends Equatable {
  InicioDeSesiNEightState({
    this.emailController,
    this.inicioDeSesiNEightModelObj,
  });

  TextEditingController? emailController;

  InicioDeSesiNEightModel? inicioDeSesiNEightModelObj;

  @override
  List<Object?> get props => [
        emailController,
        inicioDeSesiNEightModelObj,
      ];
  InicioDeSesiNEightState copyWith({
    TextEditingController? emailController,
    InicioDeSesiNEightModel? inicioDeSesiNEightModelObj,
  }) {
    return InicioDeSesiNEightState(
      emailController: emailController ?? this.emailController,
      inicioDeSesiNEightModelObj:
          inicioDeSesiNEightModelObj ?? this.inicioDeSesiNEightModelObj,
    );
  }
}
