// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftyoneEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftyone widget is first created.
class InicioDeSesiNFiftyoneInitialEvent extends InicioDeSesiNFiftyoneEvent {
  @override
  List<Object?> get props => [];
}
