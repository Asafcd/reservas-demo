// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftyfour widget is first created.
class InicioDeSesiNFiftyfourInitialEvent extends InicioDeSesiNFiftyfourEvent {
  @override
  List<Object?> get props => [];
}
