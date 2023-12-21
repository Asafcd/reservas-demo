// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyone_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyoneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyoneContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyoneContainer widget is first created.
class InicioDeSesiNTwentyoneContainerInitialEvent
    extends InicioDeSesiNTwentyoneContainerEvent {
  @override
  List<Object?> get props => [];
}
