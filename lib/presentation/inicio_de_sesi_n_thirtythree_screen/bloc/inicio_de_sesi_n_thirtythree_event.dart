// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtythree widget is first created.
class InicioDeSesiNThirtythreeInitialEvent
    extends InicioDeSesiNThirtythreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNThirtythreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
