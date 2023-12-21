// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventyEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventy widget is first created.
class InicioDeSesiNSeventyInitialEvent extends InicioDeSesiNSeventyEvent {
  @override
  List<Object?> get props => [];
}
