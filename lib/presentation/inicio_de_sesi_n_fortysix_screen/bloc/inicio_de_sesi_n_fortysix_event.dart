// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortysix widget is first created.
class InicioDeSesiNFortysixInitialEvent extends InicioDeSesiNFortysixEvent {
  @override
  List<Object?> get props => [];
}
