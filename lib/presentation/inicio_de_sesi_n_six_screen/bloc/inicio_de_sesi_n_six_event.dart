// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSix widget is first created.
class InicioDeSesiNSixInitialEvent extends InicioDeSesiNSixEvent {
  @override
  List<Object?> get props => [];
}
