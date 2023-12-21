// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventytwo widget is first created.
class InicioDeSesiNSeventytwoInitialEvent extends InicioDeSesiNSeventytwoEvent {
  @override
  List<Object?> get props => [];
}
