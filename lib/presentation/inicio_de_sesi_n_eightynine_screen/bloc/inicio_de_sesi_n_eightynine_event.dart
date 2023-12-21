// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightynine widget is first created.
class InicioDeSesiNEightynineInitialEvent extends InicioDeSesiNEightynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InicioDeSesiNEightynineEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
