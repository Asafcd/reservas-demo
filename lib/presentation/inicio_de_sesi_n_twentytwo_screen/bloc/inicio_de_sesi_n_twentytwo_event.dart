// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentytwo widget is first created.
class InicioDeSesiNTwentytwoInitialEvent extends InicioDeSesiNTwentytwoEvent {
  @override
  List<Object?> get props => [];
}
