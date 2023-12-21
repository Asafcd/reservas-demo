// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixteen_bloc.dart';

/// Represents the state of InicioDeSesiNSixteen in the application.
class InicioDeSesiNSixteenState extends Equatable {
  InicioDeSesiNSixteenState({
    this.firstNameController,
    this.lastNameController,
    this.usernameController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.inicioDeSesiNSixteenModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? usernameController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  InicioDeSesiNSixteenModel? inicioDeSesiNSixteenModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        usernameController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        inicioDeSesiNSixteenModelObj,
      ];
  InicioDeSesiNSixteenState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? usernameController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    InicioDeSesiNSixteenModel? inicioDeSesiNSixteenModelObj,
  }) {
    return InicioDeSesiNSixteenState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      usernameController: usernameController ?? this.usernameController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      inicioDeSesiNSixteenModelObj:
          inicioDeSesiNSixteenModelObj ?? this.inicioDeSesiNSixteenModelObj,
    );
  }
}
