// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fifty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFifty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftyEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFifty widget is first created.
class InicioDeSesiNFiftyInitialEvent extends InicioDeSesiNFiftyEvent {
  @override
  List<Object?> get props => [];
}
