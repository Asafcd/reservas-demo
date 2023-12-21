// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNNinetyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNNinetyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNNinetyeight widget is first created.
class InicioDeSesiNNinetyeightInitialEvent
    extends InicioDeSesiNNinetyeightEvent {
  @override
  List<Object?> get props => [];
}
