// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightyoneEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightyone widget is first created.
class InicioDeSesiNEightyoneInitialEvent extends InicioDeSesiNEightyoneEvent {
  @override
  List<Object?> get props => [];
}
