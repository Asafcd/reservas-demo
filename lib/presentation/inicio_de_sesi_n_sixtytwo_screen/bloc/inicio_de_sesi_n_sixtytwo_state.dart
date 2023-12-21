// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtytwo_bloc.dart';

/// Represents the state of InicioDeSesiNSixtytwo in the application.
class InicioDeSesiNSixtytwoState extends Equatable {
  InicioDeSesiNSixtytwoState({
    this.selectedDropDownValue,
    this.inicioDeSesiNSixtytwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNSixtytwoModel? inicioDeSesiNSixtytwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNSixtytwoModelObj,
      ];
  InicioDeSesiNSixtytwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNSixtytwoModel? inicioDeSesiNSixtytwoModelObj,
  }) {
    return InicioDeSesiNSixtytwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNSixtytwoModelObj:
          inicioDeSesiNSixtytwoModelObj ?? this.inicioDeSesiNSixtytwoModelObj,
    );
  }
}
