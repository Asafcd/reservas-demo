// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtyfour widget is first created.
class InicioDeSesiNThirtyfourInitialEvent extends InicioDeSesiNThirtyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InicioDeSesiNThirtyfourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends InicioDeSesiNThirtyfourEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
