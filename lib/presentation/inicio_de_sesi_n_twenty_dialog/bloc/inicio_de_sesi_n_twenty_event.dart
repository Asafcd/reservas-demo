// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwenty widget is first created.
class InicioDeSesiNTwentyInitialEvent extends InicioDeSesiNTwentyEvent {
  @override
  List<Object?> get props => [];
}
