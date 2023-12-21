// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtysix widget is first created.
class InicioDeSesiNThirtysixInitialEvent extends InicioDeSesiNThirtysixEvent {
  @override
  List<Object?> get props => [];
}
