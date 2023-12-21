// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtyeight widget is first created.
class InicioDeSesiNSixtyeightInitialEvent extends InicioDeSesiNSixtyeightEvent {
  @override
  List<Object?> get props => [];
}
