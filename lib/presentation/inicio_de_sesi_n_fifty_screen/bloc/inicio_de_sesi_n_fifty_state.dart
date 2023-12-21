// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fifty_bloc.dart';

/// Represents the state of InicioDeSesiNFifty in the application.
class InicioDeSesiNFiftyState extends Equatable {
  InicioDeSesiNFiftyState({
    this.fullNameController,
    this.nameController,
    this.emailController,
    this.inicioDeSesiNFiftyModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? nameController;

  TextEditingController? emailController;

  InicioDeSesiNFiftyModel? inicioDeSesiNFiftyModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        nameController,
        emailController,
        inicioDeSesiNFiftyModelObj,
      ];
  InicioDeSesiNFiftyState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? nameController,
    TextEditingController? emailController,
    InicioDeSesiNFiftyModel? inicioDeSesiNFiftyModelObj,
  }) {
    return InicioDeSesiNFiftyState(
      fullNameController: fullNameController ?? this.fullNameController,
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      inicioDeSesiNFiftyModelObj:
          inicioDeSesiNFiftyModelObj ?? this.inicioDeSesiNFiftyModelObj,
    );
  }
}
