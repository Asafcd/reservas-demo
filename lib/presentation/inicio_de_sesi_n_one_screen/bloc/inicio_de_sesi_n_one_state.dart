// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_one_bloc.dart';

/// Represents the state of InicioDeSesiNOne in the application.
class InicioDeSesiNOneState extends Equatable {
  InicioDeSesiNOneState({
    this.emailController,
    this.inicioDeSesiNOneModelObj,
  });

  TextEditingController? emailController;

  InicioDeSesiNOneModel? inicioDeSesiNOneModelObj;

  @override
  List<Object?> get props => [
        emailController,
        inicioDeSesiNOneModelObj,
      ];
  InicioDeSesiNOneState copyWith({
    TextEditingController? emailController,
    InicioDeSesiNOneModel? inicioDeSesiNOneModelObj,
  }) {
    return InicioDeSesiNOneState(
      emailController: emailController ?? this.emailController,
      inicioDeSesiNOneModelObj:
          inicioDeSesiNOneModelObj ?? this.inicioDeSesiNOneModelObj,
    );
  }
}
