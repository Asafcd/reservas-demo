// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventythree widget is first created.
class InicioDeSesiNSeventythreeInitialEvent
    extends InicioDeSesiNSeventythreeEvent {
  @override
  List<Object?> get props => [];
}
