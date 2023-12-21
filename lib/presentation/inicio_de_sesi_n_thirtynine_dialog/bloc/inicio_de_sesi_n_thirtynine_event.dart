// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtynine widget is first created.
class InicioDeSesiNThirtynineInitialEvent extends InicioDeSesiNThirtynineEvent {
  @override
  List<Object?> get props => [];
}
