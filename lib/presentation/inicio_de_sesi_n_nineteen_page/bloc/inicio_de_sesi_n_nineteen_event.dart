// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNNineteenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNNineteen widget is first created.
class InicioDeSesiNNineteenInitialEvent extends InicioDeSesiNNineteenEvent {
  @override
  List<Object?> get props => [];
}
