// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_seventeen_bloc.dart';

/// Represents the state of ReservasRestaurantesSeventeen in the application.
class ReservasRestaurantesSeventeenState extends Equatable {
  ReservasRestaurantesSeventeenState({
    this.couponsController,
    this.reservasRestaurantesSeventeenModelObj,
  });

  TextEditingController? couponsController;

  ReservasRestaurantesSeventeenModel? reservasRestaurantesSeventeenModelObj;

  @override
  List<Object?> get props => [
        couponsController,
        reservasRestaurantesSeventeenModelObj,
      ];
  ReservasRestaurantesSeventeenState copyWith({
    TextEditingController? couponsController,
    ReservasRestaurantesSeventeenModel? reservasRestaurantesSeventeenModelObj,
  }) {
    return ReservasRestaurantesSeventeenState(
      couponsController: couponsController ?? this.couponsController,
      reservasRestaurantesSeventeenModelObj:
          reservasRestaurantesSeventeenModelObj ??
              this.reservasRestaurantesSeventeenModelObj,
    );
  }
}
