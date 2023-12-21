// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtysix widget is first created.
class InicioDeSesiNSixtysixInitialEvent extends InicioDeSesiNSixtysixEvent {
  @override
  List<Object?> get props => [];
}
