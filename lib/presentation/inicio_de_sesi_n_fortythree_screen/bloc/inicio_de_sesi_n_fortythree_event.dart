// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortythree widget is first created.
class InicioDeSesiNFortythreeInitialEvent extends InicioDeSesiNFortythreeEvent {
  @override
  List<Object?> get props => [];
}
