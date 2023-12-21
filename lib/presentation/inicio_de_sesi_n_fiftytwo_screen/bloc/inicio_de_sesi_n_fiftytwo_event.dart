// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftytwo widget is first created.
class InicioDeSesiNFiftytwoInitialEvent extends InicioDeSesiNFiftytwoEvent {
  @override
  List<Object?> get props => [];
}
