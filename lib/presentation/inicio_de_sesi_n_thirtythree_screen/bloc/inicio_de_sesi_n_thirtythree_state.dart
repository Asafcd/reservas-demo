// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtythree_bloc.dart';

/// Represents the state of InicioDeSesiNThirtythree in the application.
class InicioDeSesiNThirtythreeState extends Equatable {
  InicioDeSesiNThirtythreeState({
    this.selectedDropDownValue,
    this.inicioDeSesiNThirtythreeModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNThirtythreeModel? inicioDeSesiNThirtythreeModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNThirtythreeModelObj,
      ];
  InicioDeSesiNThirtythreeState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNThirtythreeModel? inicioDeSesiNThirtythreeModelObj,
  }) {
    return InicioDeSesiNThirtythreeState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNThirtythreeModelObj: inicioDeSesiNThirtythreeModelObj ??
          this.inicioDeSesiNThirtythreeModelObj,
    );
  }
}
