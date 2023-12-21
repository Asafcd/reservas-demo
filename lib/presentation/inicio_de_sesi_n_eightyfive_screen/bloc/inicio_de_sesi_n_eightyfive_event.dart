// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightyfive widget is first created.
class InicioDeSesiNEightyfiveInitialEvent extends InicioDeSesiNEightyfiveEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNEightyfiveEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends InicioDeSesiNEightyfiveEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
