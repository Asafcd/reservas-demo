// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyoneEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyone widget is first created.
class InicioDeSesiNTwentyoneInitialEvent extends InicioDeSesiNTwentyoneEvent {
  @override
  List<Object?> get props => [];
}
