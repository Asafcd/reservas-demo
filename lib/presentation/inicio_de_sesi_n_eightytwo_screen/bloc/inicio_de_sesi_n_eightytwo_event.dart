// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightytwo widget is first created.
class InicioDeSesiNEightytwoInitialEvent extends InicioDeSesiNEightytwoEvent {
  @override
  List<Object?> get props => [];
}
