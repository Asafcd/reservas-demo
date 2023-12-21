// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNNinetysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNNinetysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNNinetysix widget is first created.
class InicioDeSesiNNinetysixInitialEvent extends InicioDeSesiNNinetysixEvent {
  @override
  List<Object?> get props => [];
}
