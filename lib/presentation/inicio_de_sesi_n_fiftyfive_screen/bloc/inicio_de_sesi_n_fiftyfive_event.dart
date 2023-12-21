// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftyfive widget is first created.
class InicioDeSesiNFiftyfiveInitialEvent extends InicioDeSesiNFiftyfiveEvent {
  @override
  List<Object?> get props => [];
}
