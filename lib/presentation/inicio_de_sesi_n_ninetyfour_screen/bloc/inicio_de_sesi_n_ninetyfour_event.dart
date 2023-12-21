// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNNinetyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNNinetyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNNinetyfour widget is first created.
class InicioDeSesiNNinetyfourInitialEvent extends InicioDeSesiNNinetyfourEvent {
  @override
  List<Object?> get props => [];
}
