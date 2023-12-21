// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyeight_bloc.dart';

/// Represents the state of InicioDeSesiNEightyeight in the application.
class InicioDeSesiNEightyeightState extends Equatable {
  InicioDeSesiNEightyeightState({
    this.firstNameController,
    this.lastNameController,
    this.lastName2Controller,
    this.codeController,
    this.phoneController,
    this.emailController,
    this.cardNumberController,
    this.expiresController,
    this.yearController,
    this.cvvController,
    this.productValueController,
    this.upload = false,
    this.uploadData = false,
    this.inicioDeSesiNEightyeightModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? lastName2Controller;

  TextEditingController? codeController;

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? cardNumberController;

  TextEditingController? expiresController;

  TextEditingController? yearController;

  TextEditingController? cvvController;

  TextEditingController? productValueController;

  InicioDeSesiNEightyeightModel? inicioDeSesiNEightyeightModelObj;

  bool upload;

  bool uploadData;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        lastName2Controller,
        codeController,
        phoneController,
        emailController,
        cardNumberController,
        expiresController,
        yearController,
        cvvController,
        productValueController,
        upload,
        uploadData,
        inicioDeSesiNEightyeightModelObj,
      ];
  InicioDeSesiNEightyeightState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? lastName2Controller,
    TextEditingController? codeController,
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? cardNumberController,
    TextEditingController? expiresController,
    TextEditingController? yearController,
    TextEditingController? cvvController,
    TextEditingController? productValueController,
    bool? upload,
    bool? uploadData,
    InicioDeSesiNEightyeightModel? inicioDeSesiNEightyeightModelObj,
  }) {
    return InicioDeSesiNEightyeightState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      lastName2Controller: lastName2Controller ?? this.lastName2Controller,
      codeController: codeController ?? this.codeController,
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expiresController: expiresController ?? this.expiresController,
      yearController: yearController ?? this.yearController,
      cvvController: cvvController ?? this.cvvController,
      productValueController:
          productValueController ?? this.productValueController,
      upload: upload ?? this.upload,
      uploadData: uploadData ?? this.uploadData,
      inicioDeSesiNEightyeightModelObj: inicioDeSesiNEightyeightModelObj ??
          this.inicioDeSesiNEightyeightModelObj,
    );
  }
}
