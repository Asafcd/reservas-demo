// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentynineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentynine widget is first created.
class InicioDeSesiNTwentynineInitialEvent extends InicioDeSesiNTwentynineEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNTwentynineEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
