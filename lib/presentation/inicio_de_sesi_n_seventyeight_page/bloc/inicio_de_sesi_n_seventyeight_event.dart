// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventyeight widget is first created.
class InicioDeSesiNSeventyeightInitialEvent
    extends InicioDeSesiNSeventyeightEvent {
  @override
  List<Object?> get props => [];
}
