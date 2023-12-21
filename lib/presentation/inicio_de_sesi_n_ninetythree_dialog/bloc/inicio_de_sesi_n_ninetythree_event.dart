// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNNinetythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNNinetythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNNinetythree widget is first created.
class InicioDeSesiNNinetythreeInitialEvent
    extends InicioDeSesiNNinetythreeEvent {
  @override
  List<Object?> get props => [];
}
