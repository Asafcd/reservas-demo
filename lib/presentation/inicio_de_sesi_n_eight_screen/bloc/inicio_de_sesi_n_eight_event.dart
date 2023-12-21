// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEight widget is first created.
class InicioDeSesiNEightInitialEvent extends InicioDeSesiNEightEvent {
  @override
  List<Object?> get props => [];
}
