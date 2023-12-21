// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortynine widget is first created.
class InicioDeSesiNFortynineInitialEvent extends InicioDeSesiNFortynineEvent {
  @override
  List<Object?> get props => [];
}
