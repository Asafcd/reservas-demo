// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtynine widget is first created.
class InicioDeSesiNSixtynineInitialEvent extends InicioDeSesiNSixtynineEvent {
  @override
  List<Object?> get props => [];
}
