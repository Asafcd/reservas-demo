// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyfive_bloc.dart';

/// Represents the state of InicioDeSesiNThirtyfive in the application.
class InicioDeSesiNThirtyfiveState extends Equatable {
  InicioDeSesiNThirtyfiveState({
    this.firstNameTextFieldController,
    this.codeTextFieldController,
    this.phoneTextFieldController,
    this.emailTextFieldController,
    this.cardNumberTextFieldController,
    this.expiresTextFieldController,
    this.yearTextFieldController,
    this.cvvTextFieldController,
    this.productValueEditTextController,
    this.uploadCheckBox = false,
    this.saveDataCheckBox = false,
    this.inicioDeSesiNThirtyfiveModelObj,
  });

  TextEditingController? firstNameTextFieldController;

  TextEditingController? codeTextFieldController;

  TextEditingController? phoneTextFieldController;

  TextEditingController? emailTextFieldController;

  TextEditingController? cardNumberTextFieldController;

  TextEditingController? expiresTextFieldController;

  TextEditingController? yearTextFieldController;

  TextEditingController? cvvTextFieldController;

  TextEditingController? productValueEditTextController;

  InicioDeSesiNThirtyfiveModel? inicioDeSesiNThirtyfiveModelObj;

  bool uploadCheckBox;

  bool saveDataCheckBox;

  @override
  List<Object?> get props => [
        firstNameTextFieldController,
        codeTextFieldController,
        phoneTextFieldController,
        emailTextFieldController,
        cardNumberTextFieldController,
        expiresTextFieldController,
        yearTextFieldController,
        cvvTextFieldController,
        productValueEditTextController,
        uploadCheckBox,
        saveDataCheckBox,
        inicioDeSesiNThirtyfiveModelObj,
      ];
  InicioDeSesiNThirtyfiveState copyWith({
    TextEditingController? firstNameTextFieldController,
    TextEditingController? codeTextFieldController,
    TextEditingController? phoneTextFieldController,
    TextEditingController? emailTextFieldController,
    TextEditingController? cardNumberTextFieldController,
    TextEditingController? expiresTextFieldController,
    TextEditingController? yearTextFieldController,
    TextEditingController? cvvTextFieldController,
    TextEditingController? productValueEditTextController,
    bool? uploadCheckBox,
    bool? saveDataCheckBox,
    InicioDeSesiNThirtyfiveModel? inicioDeSesiNThirtyfiveModelObj,
  }) {
    return InicioDeSesiNThirtyfiveState(
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
      expiresTextFieldController:
          expiresTextFieldController ?? this.expiresTextFieldController,
      yearTextFieldController:
          yearTextFieldController ?? this.yearTextFieldController,
      cvvTextFieldController:
          cvvTextFieldController ?? this.cvvTextFieldController,
      productValueEditTextController:
          productValueEditTextController ?? this.productValueEditTextController,
      uploadCheckBox: uploadCheckBox ?? this.uploadCheckBox,
      saveDataCheckBox: saveDataCheckBox ?? this.saveDataCheckBox,
      inicioDeSesiNThirtyfiveModelObj: inicioDeSesiNThirtyfiveModelObj ??
          this.inicioDeSesiNThirtyfiveModelObj,
    );
  }
}
