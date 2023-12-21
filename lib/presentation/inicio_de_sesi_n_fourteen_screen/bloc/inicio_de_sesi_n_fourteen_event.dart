// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFourteenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFourteen widget is first created.
class InicioDeSesiNFourteenInitialEvent extends InicioDeSesiNFourteenEvent {
  @override
  List<Object?> get props => [];
}
