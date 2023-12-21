// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyfour_bloc.dart';

/// Represents the state of InicioDeSesiNSixtyfour in the application.
class InicioDeSesiNSixtyfourState extends Equatable {
  InicioDeSesiNSixtyfourState({
    this.firstNameController,
    this.mothersLastNameController,
    this.mothersLastName2Controller,
    this.codeController,
    this.phoneController,
    this.emailController,
    this.cardNumberController,
    this.expirationDateController,
    this.yearController,
    this.cvvController,
    this.productValueController,
    this.upload = false,
    this.upload1 = false,
    this.inicioDeSesiNSixtyfourModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? mothersLastNameController;

  TextEditingController? mothersLastName2Controller;

  TextEditingController? codeController;

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  TextEditingController? yearController;

  TextEditingController? cvvController;

  TextEditingController? productValueController;

  InicioDeSesiNSixtyfourModel? inicioDeSesiNSixtyfourModelObj;

  bool upload;

  bool upload1;

  @override
  List<Object?> get props => [
        firstNameController,
        mothersLastNameController,
        mothersLastName2Controller,
        codeController,
        phoneController,
        emailController,
        cardNumberController,
        expirationDateController,
        yearController,
        cvvController,
        productValueController,
        upload,
        upload1,
        inicioDeSesiNSixtyfourModelObj,
      ];
  InicioDeSesiNSixtyfourState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? mothersLastNameController,
    TextEditingController? mothersLastName2Controller,
    TextEditingController? codeController,
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    TextEditingController? yearController,
    TextEditingController? cvvController,
    TextEditingController? productValueController,
    bool? upload,
    bool? upload1,
    InicioDeSesiNSixtyfourModel? inicioDeSesiNSixtyfourModelObj,
  }) {
    return InicioDeSesiNSixtyfourState(
      firstNameController: firstNameController ?? this.firstNameController,
      mothersLastNameController:
          mothersLastNameController ?? this.mothersLastNameController,
      mothersLastName2Controller:
          mothersLastName2Controller ?? this.mothersLastName2Controller,
      codeController: codeController ?? this.codeController,
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      yearController: yearController ?? this.yearController,
      cvvController: cvvController ?? this.cvvController,
      productValueController:
          productValueController ?? this.productValueController,
      upload: upload ?? this.upload,
      upload1: upload1 ?? this.upload1,
      inicioDeSesiNSixtyfourModelObj:
          inicioDeSesiNSixtyfourModelObj ?? this.inicioDeSesiNSixtyfourModelObj,
    );
  }
}
