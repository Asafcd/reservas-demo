// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_six_bloc.dart';

/// Represents the state of InicioDeSesiNSix in the application.
class InicioDeSesiNSixState extends Equatable {
  InicioDeSesiNSixState({
    this.emailController,
    this.inicioDeSesiNSixModelObj,
  });

  TextEditingController? emailController;

  InicioDeSesiNSixModel? inicioDeSesiNSixModelObj;

  @override
  List<Object?> get props => [
        emailController,
        inicioDeSesiNSixModelObj,
      ];
  InicioDeSesiNSixState copyWith({
    TextEditingController? emailController,
    InicioDeSesiNSixModel? inicioDeSesiNSixModelObj,
  }) {
    return InicioDeSesiNSixState(
      emailController: emailController ?? this.emailController,
      inicioDeSesiNSixModelObj:
          inicioDeSesiNSixModelObj ?? this.inicioDeSesiNSixModelObj,
    );
  }
}
