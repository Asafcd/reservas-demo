// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixty_bloc.dart';

/// Represents the state of InicioDeSesiNSixty in the application.
class InicioDeSesiNSixtyState extends Equatable {
  InicioDeSesiNSixtyState({
    this.selectedDropDownValue,
    this.inicioDeSesiNSixtyModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNSixtyModel? inicioDeSesiNSixtyModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNSixtyModelObj,
      ];
  InicioDeSesiNSixtyState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNSixtyModel? inicioDeSesiNSixtyModelObj,
  }) {
    return InicioDeSesiNSixtyState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNSixtyModelObj:
          inicioDeSesiNSixtyModelObj ?? this.inicioDeSesiNSixtyModelObj,
    );
  }
}
