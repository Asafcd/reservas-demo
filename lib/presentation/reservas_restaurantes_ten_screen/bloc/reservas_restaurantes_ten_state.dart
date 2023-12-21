// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_ten_bloc.dart';

/// Represents the state of ReservasRestaurantesTen in the application.
class ReservasRestaurantesTenState extends Equatable {
  ReservasRestaurantesTenState({
    this.selectedDropDownValue,
    this.sliderIndex = 0,
    this.reservasRestaurantesTenModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  ReservasRestaurantesTenModel? reservasRestaurantesTenModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        sliderIndex,
        reservasRestaurantesTenModelObj,
      ];
  ReservasRestaurantesTenState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    int? sliderIndex,
    ReservasRestaurantesTenModel? reservasRestaurantesTenModelObj,
  }) {
    return ReservasRestaurantesTenState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      reservasRestaurantesTenModelObj: reservasRestaurantesTenModelObj ??
          this.reservasRestaurantesTenModelObj,
    );
  }
}
