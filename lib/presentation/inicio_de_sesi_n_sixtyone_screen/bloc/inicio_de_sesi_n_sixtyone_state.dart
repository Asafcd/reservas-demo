// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyone_bloc.dart';

/// Represents the state of InicioDeSesiNSixtyone in the application.
class InicioDeSesiNSixtyoneState extends Equatable {
  InicioDeSesiNSixtyoneState({
    this.selectedDropDownValue,
    this.inicioDeSesiNSixtyoneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNSixtyoneModel? inicioDeSesiNSixtyoneModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNSixtyoneModelObj,
      ];
  InicioDeSesiNSixtyoneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNSixtyoneModel? inicioDeSesiNSixtyoneModelObj,
  }) {
    return InicioDeSesiNSixtyoneState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNSixtyoneModelObj:
          inicioDeSesiNSixtyoneModelObj ?? this.inicioDeSesiNSixtyoneModelObj,
    );
  }
}
