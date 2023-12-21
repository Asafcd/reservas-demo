// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_sixteen_bloc.dart';

/// Represents the state of ReservasRestaurantesSixteen in the application.
class ReservasRestaurantesSixteenState extends Equatable {
  ReservasRestaurantesSixteenState({this.reservasRestaurantesSixteenModelObj});

  ReservasRestaurantesSixteenModel? reservasRestaurantesSixteenModelObj;

  @override
  List<Object?> get props => [
        reservasRestaurantesSixteenModelObj,
      ];
  ReservasRestaurantesSixteenState copyWith(
      {ReservasRestaurantesSixteenModel? reservasRestaurantesSixteenModelObj}) {
    return ReservasRestaurantesSixteenState(
      reservasRestaurantesSixteenModelObj:
          reservasRestaurantesSixteenModelObj ??
              this.reservasRestaurantesSixteenModelObj,
    );
  }
}
