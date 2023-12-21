// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftynine widget is first created.
class InicioDeSesiNFiftynineInitialEvent extends InicioDeSesiNFiftynineEvent {
  @override
  List<Object?> get props => [];
}
