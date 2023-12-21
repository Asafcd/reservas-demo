// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwo widget is first created.
class InicioDeSesiNTwoInitialEvent extends InicioDeSesiNTwoEvent {
  @override
  List<Object?> get props => [];
}
