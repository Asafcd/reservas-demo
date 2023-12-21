// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReservasRestaurantesSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReservasRestaurantesSeventeenEvent extends Equatable {}

/// Event that is dispatched when the ReservasRestaurantesSeventeen widget is first created.
class ReservasRestaurantesSeventeenInitialEvent
    extends ReservasRestaurantesSeventeenEvent {
  @override
  List<Object?> get props => [];
}
