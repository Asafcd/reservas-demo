// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtysevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtyseven widget is first created.
class InicioDeSesiNSixtysevenInitialEvent extends InicioDeSesiNSixtysevenEvent {
  @override
  List<Object?> get props => [];
}
