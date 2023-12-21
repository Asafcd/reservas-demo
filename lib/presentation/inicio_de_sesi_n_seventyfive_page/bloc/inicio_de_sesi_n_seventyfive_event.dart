// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventyfive widget is first created.
class InicioDeSesiNSeventyfiveInitialEvent
    extends InicioDeSesiNSeventyfiveEvent {
  @override
  List<Object?> get props => [];
}
