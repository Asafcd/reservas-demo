// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeven widget is first created.
class InicioDeSesiNSevenInitialEvent extends InicioDeSesiNSevenEvent {
  @override
  List<Object?> get props => [];
}
