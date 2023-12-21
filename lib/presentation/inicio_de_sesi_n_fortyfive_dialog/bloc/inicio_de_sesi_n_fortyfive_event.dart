// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortyfive widget is first created.
class InicioDeSesiNFortyfiveInitialEvent extends InicioDeSesiNFortyfiveEvent {
  @override
  List<Object?> get props => [];
}
