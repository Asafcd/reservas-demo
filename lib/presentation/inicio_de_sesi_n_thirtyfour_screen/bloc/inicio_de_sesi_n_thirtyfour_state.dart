// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyfour_bloc.dart';

/// Represents the state of InicioDeSesiNThirtyfour in the application.
class InicioDeSesiNThirtyfourState extends Equatable {
  InicioDeSesiNThirtyfourState({
    this.firstNameFieldController,
    this.mothersLastNameFieldController,
    this.mothersLastName2FieldController,
    this.codeFieldController,
    this.phoneFieldController,
    this.emailFieldController,
    this.cardNumberFieldController,
    this.expirationDateFieldController,
    this.yearFieldController,
    this.cvvFieldController,
    this.productValueFieldController,
    this.uploadCheckBox = false,
    this.saveDataCheckBox = false,
    this.inicioDeSesiNThirtyfourModelObj,
  });

  TextEditingController? firstNameFieldController;

  TextEditingController? mothersLastNameFieldController;

  TextEditingController? mothersLastName2FieldController;

  TextEditingController? codeFieldController;

  TextEditingController? phoneFieldController;

  TextEditingController? emailFieldController;

  TextEditingController? cardNumberFieldController;

  TextEditingController? expirationDateFieldController;

  TextEditingController? yearFieldController;

  TextEditingController? cvvFieldController;

  TextEditingController? productValueFieldController;

  InicioDeSesiNThirtyfourModel? inicioDeSesiNThirtyfourModelObj;

  bool uploadCheckBox;

  bool saveDataCheckBox;

  @override
  List<Object?> get props => [
        firstNameFieldController,
        mothersLastNameFieldController,
        mothersLastName2FieldController,
        codeFieldController,
        phoneFieldController,
        emailFieldController,
        cardNumberFieldController,
        expirationDateFieldController,
        yearFieldController,
        cvvFieldController,
        productValueFieldController,
        uploadCheckBox,
        saveDataCheckBox,
        inicioDeSesiNThirtyfourModelObj,
      ];
  InicioDeSesiNThirtyfourState copyWith({
    TextEditingController? firstNameFieldController,
    TextEditingController? mothersLastNameFieldController,
    TextEditingController? mothersLastName2FieldController,
    TextEditingController? codeFieldController,
    TextEditingController? phoneFieldController,
    TextEditingController? emailFieldController,
    TextEditingController? cardNumberFieldController,
    TextEditingController? expirationDateFieldController,
    TextEditingController? yearFieldController,
    TextEditingController? cvvFieldController,
    TextEditingController? productValueFieldController,
    bool? uploadCheckBox,
    bool? saveDataCheckBox,
    InicioDeSesiNThirtyfourModel? inicioDeSesiNThirtyfourModelObj,
  }) {
    return InicioDeSesiNThirtyfourState(
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      mothersLastNameFieldController:
          mothersLastNameFieldController ?? this.mothersLastNameFieldController,
      mothersLastName2FieldController: mothersLastName2FieldController ??
          this.mothersLastName2FieldController,
      codeFieldController: codeFieldController ?? this.codeFieldController,
      phoneFieldController: phoneFieldController ?? this.phoneFieldController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      cardNumberFieldController:
          cardNumberFieldController ?? this.cardNumberFieldController,
      expirationDateFieldController:
          expirationDateFieldController ?? this.expirationDateFieldController,
      yearFieldController: yearFieldController ?? this.yearFieldController,
      cvvFieldController: cvvFieldController ?? this.cvvFieldController,
      productValueFieldController:
          productValueFieldController ?? this.productValueFieldController,
      uploadCheckBox: uploadCheckBox ?? this.uploadCheckBox,
      saveDataCheckBox: saveDataCheckBox ?? this.saveDataCheckBox,
      inicioDeSesiNThirtyfourModelObj: inicioDeSesiNThirtyfourModelObj ??
          this.inicioDeSesiNThirtyfourModelObj,
    );
  }
}
