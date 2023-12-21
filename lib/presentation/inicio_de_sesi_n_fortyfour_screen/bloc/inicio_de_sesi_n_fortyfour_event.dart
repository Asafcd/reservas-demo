// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortyfour widget is first created.
class InicioDeSesiNFortyfourInitialEvent extends InicioDeSesiNFortyfourEvent {
  @override
  List<Object?> get props => [];
}
