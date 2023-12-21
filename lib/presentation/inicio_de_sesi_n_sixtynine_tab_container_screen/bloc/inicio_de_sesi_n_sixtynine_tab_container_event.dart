// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtynine_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtynineTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtynineTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtynineTabContainer widget is first created.
class InicioDeSesiNSixtynineTabContainerInitialEvent
    extends InicioDeSesiNSixtynineTabContainerEvent {
  @override
  List<Object?> get props => [];
}
