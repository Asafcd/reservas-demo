// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftythree widget is first created.
class InicioDeSesiNFiftythreeInitialEvent extends InicioDeSesiNFiftythreeEvent {
  @override
  List<Object?> get props => [];
}
