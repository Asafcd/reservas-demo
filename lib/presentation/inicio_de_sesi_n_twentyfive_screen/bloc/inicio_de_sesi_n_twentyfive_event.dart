// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyfive widget is first created.
class InicioDeSesiNTwentyfiveInitialEvent extends InicioDeSesiNTwentyfiveEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNTwentyfiveEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends InicioDeSesiNTwentyfiveEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
