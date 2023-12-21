// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventeen_bloc.dart';

/// Represents the state of InicioDeSesiNSeventeen in the application.
class InicioDeSesiNSeventeenState extends Equatable {
  InicioDeSesiNSeventeenState({
    this.firstNameController,
    this.lastNameController,
    this.usernameController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.inicioDeSesiNSeventeenModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? usernameController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  InicioDeSesiNSeventeenModel? inicioDeSesiNSeventeenModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        usernameController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        inicioDeSesiNSeventeenModelObj,
      ];
  InicioDeSesiNSeventeenState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? usernameController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    InicioDeSesiNSeventeenModel? inicioDeSesiNSeventeenModelObj,
  }) {
    return InicioDeSesiNSeventeenState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      usernameController: usernameController ?? this.usernameController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      inicioDeSesiNSeventeenModelObj:
          inicioDeSesiNSeventeenModelObj ?? this.inicioDeSesiNSeventeenModelObj,
    );
  }
}
