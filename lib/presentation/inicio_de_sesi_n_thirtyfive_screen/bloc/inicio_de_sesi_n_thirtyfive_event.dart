// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtyfive widget is first created.
class InicioDeSesiNThirtyfiveInitialEvent extends InicioDeSesiNThirtyfiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InicioDeSesiNThirtyfiveEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends InicioDeSesiNThirtyfiveEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
