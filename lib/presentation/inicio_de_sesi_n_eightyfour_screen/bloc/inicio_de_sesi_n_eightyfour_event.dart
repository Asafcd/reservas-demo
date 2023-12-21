// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightyfour widget is first created.
class InicioDeSesiNEightyfourInitialEvent extends InicioDeSesiNEightyfourEvent {
  @override
  List<Object?> get props => [];
}
