// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFiftysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFiftysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFiftysix widget is first created.
class InicioDeSesiNFiftysixInitialEvent extends InicioDeSesiNFiftysixEvent {
  @override
  List<Object?> get props => [];
}
