// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_nine_bloc.dart';

/// Represents the state of ReservasRestaurantesNine in the application.
class ReservasRestaurantesNineState extends Equatable {
  ReservasRestaurantesNineState({
    this.selectedDropDownValue,
    this.sliderIndex = 0,
    this.reservasRestaurantesNineModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  ReservasRestaurantesNineModel? reservasRestaurantesNineModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        sliderIndex,
        reservasRestaurantesNineModelObj,
      ];
  ReservasRestaurantesNineState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    int? sliderIndex,
    ReservasRestaurantesNineModel? reservasRestaurantesNineModelObj,
  }) {
    return ReservasRestaurantesNineState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      reservasRestaurantesNineModelObj: reservasRestaurantesNineModelObj ??
          this.reservasRestaurantesNineModelObj,
    );
  }
}
