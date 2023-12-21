// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortytwo_bloc.dart';

/// Represents the state of InicioDeSesiNFortytwo in the application.
class InicioDeSesiNFortytwoState extends Equatable {
  InicioDeSesiNFortytwoState({
    this.userNameController,
    this.codeController,
    this.phoneController,
    this.emailController,
    this.cardNumberController,
    this.expirationDateController,
    this.zipcodeController,
    this.cvvController,
    this.inicioDeSesiNFortytwoModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? codeController;

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  TextEditingController? zipcodeController;

  TextEditingController? cvvController;

  InicioDeSesiNFortytwoModel? inicioDeSesiNFortytwoModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        codeController,
        phoneController,
        emailController,
        cardNumberController,
        expirationDateController,
        zipcodeController,
        cvvController,
        inicioDeSesiNFortytwoModelObj,
      ];
  InicioDeSesiNFortytwoState copyWith({
    TextEditingController? userNameController,
    TextEditingController? codeController,
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    TextEditingController? zipcodeController,
    TextEditingController? cvvController,
    InicioDeSesiNFortytwoModel? inicioDeSesiNFortytwoModelObj,
  }) {
    return InicioDeSesiNFortytwoState(
      userNameController: userNameController ?? this.userNameController,
      codeController: codeController ?? this.codeController,
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      cvvController: cvvController ?? this.cvvController,
      inicioDeSesiNFortytwoModelObj:
          inicioDeSesiNFortytwoModelObj ?? this.inicioDeSesiNFortytwoModelObj,
    );
  }
}
