// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtyfour widget is first created.
class InicioDeSesiNSixtyfourInitialEvent extends InicioDeSesiNSixtyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InicioDeSesiNSixtyfourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends InicioDeSesiNSixtyfourEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
