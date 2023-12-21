// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyeight_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyeightTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyeightTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyeightTabContainer widget is first created.
class InicioDeSesiNTwentyeightTabContainerInitialEvent
    extends InicioDeSesiNTwentyeightTabContainerEvent {
  @override
  List<Object?> get props => [];
}
