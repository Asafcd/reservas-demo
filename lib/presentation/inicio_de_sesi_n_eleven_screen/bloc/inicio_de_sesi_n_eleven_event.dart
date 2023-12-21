// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNElevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEleven widget is first created.
class InicioDeSesiNElevenInitialEvent extends InicioDeSesiNElevenEvent {
  @override
  List<Object?> get props => [];
}
