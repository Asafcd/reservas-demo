// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtysevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtyseven widget is first created.
class InicioDeSesiNThirtysevenInitialEvent
    extends InicioDeSesiNThirtysevenEvent {
  @override
  List<Object?> get props => [];
}
