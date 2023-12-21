// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eighty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEighty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightyEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEighty widget is first created.
class InicioDeSesiNEightyInitialEvent extends InicioDeSesiNEightyEvent {
  @override
  List<Object?> get props => [];
}
