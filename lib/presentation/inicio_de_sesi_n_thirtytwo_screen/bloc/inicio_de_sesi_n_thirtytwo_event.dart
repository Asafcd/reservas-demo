// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirtytwo widget is first created.
class InicioDeSesiNThirtytwoInitialEvent extends InicioDeSesiNThirtytwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNThirtytwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
