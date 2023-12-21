// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightynine_bloc.dart';

/// Represents the state of InicioDeSesiNEightynine in the application.
class InicioDeSesiNEightynineState extends Equatable {
  InicioDeSesiNEightynineState({
    this.firstNameTextFieldController,
    this.codeTextFieldController,
    this.phoneTextFieldController,
    this.emailTextFieldController,
    this.cardNumberTextFieldController,
    this.expiresRowController,
    this.yearEditTextController,
    this.cvvTextFieldController,
    this.productValueEditTextController,
    this.uploadCheckBox = false,
    this.inicioDeSesiNEightynineModelObj,
  });

  TextEditingController? firstNameTextFieldController;

  TextEditingController? codeTextFieldController;

  TextEditingController? phoneTextFieldController;

  TextEditingController? emailTextFieldController;

  TextEditingController? cardNumberTextFieldController;

  TextEditingController? expiresRowController;

  TextEditingController? yearEditTextController;

  TextEditingController? cvvTextFieldController;

  TextEditingController? productValueEditTextController;

  InicioDeSesiNEightynineModel? inicioDeSesiNEightynineModelObj;

  bool uploadCheckBox;

  @override
  List<Object?> get props => [
        firstNameTextFieldController,
        codeTextFieldController,
        phoneTextFieldController,
        emailTextFieldController,
        cardNumberTextFieldController,
        expiresRowController,
        yearEditTextController,
        cvvTextFieldController,
        productValueEditTextController,
        uploadCheckBox,
        inicioDeSesiNEightynineModelObj,
      ];
  InicioDeSesiNEightynineState copyWith({
    TextEditingController? firstNameTextFieldController,
    TextEditingController? codeTextFieldController,
    TextEditingController? phoneTextFieldController,
    TextEditingController? emailTextFieldController,
    TextEditingController? cardNumberTextFieldController,
    TextEditingController? expiresRowController,
    TextEditingController? yearEditTextController,
    TextEditingController? cvvTextFieldController,
    TextEditingController? productValueEditTextController,
    bool? uploadCheckBox,
    InicioDeSesiNEightynineModel? inicioDeSesiNEightynineModelObj,
  }) {
    return InicioDeSesiNEightynineState(
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
      expiresRowController: expiresRowController ?? this.expiresRowController,
      yearEditTextController:
          yearEditTextController ?? this.yearEditTextController,
      cvvTextFieldController:
          cvvTextFieldController ?? this.cvvTextFieldController,
      productValueEditTextController:
          productValueEditTextController ?? this.productValueEditTextController,
      uploadCheckBox: uploadCheckBox ?? this.uploadCheckBox,
      inicioDeSesiNEightynineModelObj: inicioDeSesiNEightynineModelObj ??
          this.inicioDeSesiNEightynineModelObj,
    );
  }
}
