// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventynine widget is first created.
class InicioDeSesiNSeventynineInitialEvent
    extends InicioDeSesiNSeventynineEvent {
  @override
  List<Object?> get props => [];
}
