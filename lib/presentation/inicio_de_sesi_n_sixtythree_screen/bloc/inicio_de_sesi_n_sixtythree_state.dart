// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtythree_bloc.dart';

/// Represents the state of InicioDeSesiNSixtythree in the application.
class InicioDeSesiNSixtythreeState extends Equatable {
  InicioDeSesiNSixtythreeState({
    this.selectedDropDownValue,
    this.inicioDeSesiNSixtythreeModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNSixtythreeModel? inicioDeSesiNSixtythreeModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNSixtythreeModelObj,
      ];
  InicioDeSesiNSixtythreeState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNSixtythreeModel? inicioDeSesiNSixtythreeModelObj,
  }) {
    return InicioDeSesiNSixtythreeState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNSixtythreeModelObj: inicioDeSesiNSixtythreeModelObj ??
          this.inicioDeSesiNSixtythreeModelObj,
    );
  }
}
