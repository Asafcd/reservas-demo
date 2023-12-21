// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyeight_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventyeightTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventyeightTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventyeightTabContainer widget is first created.
class InicioDeSesiNSeventyeightTabContainerInitialEvent
    extends InicioDeSesiNSeventyeightTabContainerEvent {
  @override
  List<Object?> get props => [];
}
