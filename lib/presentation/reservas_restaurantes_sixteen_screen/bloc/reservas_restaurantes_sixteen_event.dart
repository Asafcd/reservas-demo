// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReservasRestaurantesSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReservasRestaurantesSixteenEvent extends Equatable {}

/// Event that is dispatched when the ReservasRestaurantesSixteen widget is first created.
class ReservasRestaurantesSixteenInitialEvent
    extends ReservasRestaurantesSixteenEvent {
  @override
  List<Object?> get props => [];
}
