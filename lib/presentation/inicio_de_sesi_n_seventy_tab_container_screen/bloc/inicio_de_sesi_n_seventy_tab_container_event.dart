// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventy_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventyTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventyTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventyTabContainer widget is first created.
class InicioDeSesiNSeventyTabContainerInitialEvent
    extends InicioDeSesiNSeventyTabContainerEvent {
  @override
  List<Object?> get props => [];
}
