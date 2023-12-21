// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtyeight widget is first created.
class InicioDeSesiNThirtyeightInitialEvent
    extends InicioDeSesiNThirtyeightEvent {
  @override
  List<Object?> get props => [];
}
