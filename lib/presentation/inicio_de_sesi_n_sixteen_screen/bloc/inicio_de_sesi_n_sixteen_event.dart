// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixteenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixteen widget is first created.
class InicioDeSesiNSixteenInitialEvent extends InicioDeSesiNSixteenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNSixteenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends InicioDeSesiNSixteenEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends InicioDeSesiNSixteenEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
