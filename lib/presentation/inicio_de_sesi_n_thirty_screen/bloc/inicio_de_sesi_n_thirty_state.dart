// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirty_bloc.dart';

/// Represents the state of InicioDeSesiNThirty in the application.
class InicioDeSesiNThirtyState extends Equatable {
  InicioDeSesiNThirtyState({
    this.selectedDropDownValue,
    this.inicioDeSesiNThirtyModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNThirtyModel? inicioDeSesiNThirtyModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNThirtyModelObj,
      ];
  InicioDeSesiNThirtyState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNThirtyModel? inicioDeSesiNThirtyModelObj,
  }) {
    return InicioDeSesiNThirtyState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNThirtyModelObj:
          inicioDeSesiNThirtyModelObj ?? this.inicioDeSesiNThirtyModelObj,
    );
  }
}
