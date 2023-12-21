// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightythree widget is first created.
class InicioDeSesiNEightythreeInitialEvent
    extends InicioDeSesiNEightythreeEvent {
  @override
  List<Object?> get props => [];
}
