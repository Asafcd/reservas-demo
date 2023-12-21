// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortysevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortyseven widget is first created.
class InicioDeSesiNFortysevenInitialEvent extends InicioDeSesiNFortysevenEvent {
  @override
  List<Object?> get props => [];
}
