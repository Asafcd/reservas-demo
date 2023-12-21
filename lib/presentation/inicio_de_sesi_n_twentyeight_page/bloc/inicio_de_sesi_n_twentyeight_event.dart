// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyeight widget is first created.
class InicioDeSesiNTwentyeightInitialEvent
    extends InicioDeSesiNTwentyeightEvent {
  @override
  List<Object?> get props => [];
}
