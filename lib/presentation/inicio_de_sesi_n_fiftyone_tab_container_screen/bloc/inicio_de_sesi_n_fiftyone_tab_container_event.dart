// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyone_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftyoneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftyoneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftyoneTabContainer widget is first created.
class InicioDeSesiNFiftyoneTabContainerInitialEvent
    extends InicioDeSesiNFiftyoneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
