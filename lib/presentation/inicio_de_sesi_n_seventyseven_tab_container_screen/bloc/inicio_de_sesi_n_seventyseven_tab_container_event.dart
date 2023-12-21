// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyseven_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventysevenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventysevenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventysevenTabContainer widget is first created.
class InicioDeSesiNSeventysevenTabContainerInitialEvent
    extends InicioDeSesiNSeventysevenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
