// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyfive_bloc.dart';

/// Represents the state of InicioDeSesiNSixtyfive in the application.
class InicioDeSesiNSixtyfiveState extends Equatable {
  InicioDeSesiNSixtyfiveState({
    this.firstNameTextFieldController,
    this.codeTextFieldController,
    this.phoneTextFieldController,
    this.emailTextFieldController,
    this.cardNumberTextFieldController,
    this.expiresMonthTextFieldController,
    this.expiresYearTextFieldController,
    this.cvvTextFieldController,
    this.productValueEditTextController,
    this.saveDataCheckBox = false,
    this.inicioDeSesiNSixtyfiveModelObj,
  });

  TextEditingController? firstNameTextFieldController;

  TextEditingController? codeTextFieldController;

  TextEditingController? phoneTextFieldController;

  TextEditingController? emailTextFieldController;

  TextEditingController? cardNumberTextFieldController;

  TextEditingController? expiresMonthTextFieldController;

  TextEditingController? expiresYearTextFieldController;

  TextEditingController? cvvTextFieldController;

  TextEditingController? productValueEditTextController;

  InicioDeSesiNSixtyfiveModel? inicioDeSesiNSixtyfiveModelObj;

  bool saveDataCheckBox;

  @override
  List<Object?> get props => [
        firstNameTextFieldController,
        codeTextFieldController,
        phoneTextFieldController,
        emailTextFieldController,
        cardNumberTextFieldController,
        expiresMonthTextFieldController,
        expiresYearTextFieldController,
        cvvTextFieldController,
        productValueEditTextController,
        saveDataCheckBox,
        inicioDeSesiNSixtyfiveModelObj,
      ];
  InicioDeSesiNSixtyfiveState copyWith({
    TextEditingController? firstNameTextFieldController,
    TextEditingController? codeTextFieldController,
    TextEditingController? phoneTextFieldController,
    TextEditingController? emailTextFieldController,
    TextEditingController? cardNumberTextFieldController,
    TextEditingController? expiresMonthTextFieldController,
    TextEditingController? expiresYearTextFieldController,
    TextEditingController? cvvTextFieldController,
    TextEditingController? productValueEditTextController,
    bool? saveDataCheckBox,
    InicioDeSesiNSixtyfiveModel? inicioDeSesiNSixtyfiveModelObj,
  }) {
    return InicioDeSesiNSixtyfiveState(
      firstNameTextFieldController:
          firstNameTextFieldController ?? this.firstNameTextFieldController,
      codeTextFieldController:
          codeTextFieldController ?? this.codeTextFieldController,
      phoneTextFieldController:
          phoneTextFieldController ?? this.phoneTextFieldController,
      emailTextFieldController:
          emailTextFieldController ?? this.emailTextFieldController,
      cardNumberTextFieldController:
          cardNumberTextFieldController ?? this.cardNumberTextFieldController,
      expiresMonthTextFieldController: expiresMonthTextFieldController ??
          this.expiresMonthTextFieldController,
      expiresYearTextFieldController:
          expiresYearTextFieldController ?? this.expiresYearTextFieldController,
      cvvTextFieldController:
          cvvTextFieldController ?? this.cvvTextFieldController,
      productValueEditTextController:
          productValueEditTextController ?? this.productValueEditTextController,
      saveDataCheckBox: saveDataCheckBox ?? this.saveDataCheckBox,
      inicioDeSesiNSixtyfiveModelObj:
          inicioDeSesiNSixtyfiveModelObj ?? this.inicioDeSesiNSixtyfiveModelObj,
    );
  }
}
