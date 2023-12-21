// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtytwo_bloc.dart';

/// Represents the state of InicioDeSesiNThirtytwo in the application.
class InicioDeSesiNThirtytwoState extends Equatable {
  InicioDeSesiNThirtytwoState({
    this.selectedDropDownValue,
    this.inicioDeSesiNThirtytwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNThirtytwoModel? inicioDeSesiNThirtytwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNThirtytwoModelObj,
      ];
  InicioDeSesiNThirtytwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNThirtytwoModel? inicioDeSesiNThirtytwoModelObj,
  }) {
    return InicioDeSesiNThirtytwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNThirtytwoModelObj:
          inicioDeSesiNThirtytwoModelObj ?? this.inicioDeSesiNThirtytwoModelObj,
    );
  }
}
