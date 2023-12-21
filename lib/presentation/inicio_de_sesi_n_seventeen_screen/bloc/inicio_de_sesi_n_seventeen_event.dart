// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventeenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventeen widget is first created.
class InicioDeSesiNSeventeenInitialEvent extends InicioDeSesiNSeventeenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNSeventeenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends InicioDeSesiNSeventeenEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends InicioDeSesiNSeventeenEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
