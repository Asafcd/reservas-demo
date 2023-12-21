// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftyeight widget is first created.
class InicioDeSesiNFiftyeightInitialEvent extends InicioDeSesiNFiftyeightEvent {
  @override
  List<Object?> get props => [];
}
