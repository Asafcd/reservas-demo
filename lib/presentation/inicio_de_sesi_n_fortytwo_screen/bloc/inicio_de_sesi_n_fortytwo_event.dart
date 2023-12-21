// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortytwo widget is first created.
class InicioDeSesiNFortytwoInitialEvent extends InicioDeSesiNFortytwoEvent {
  @override
  List<Object?> get props => [];
}
