// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNOneEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNOne widget is first created.
class InicioDeSesiNOneInitialEvent extends InicioDeSesiNOneEvent {
  @override
  List<Object?> get props => [];
}
