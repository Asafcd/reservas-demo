// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirtyEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirty widget is first created.
class InicioDeSesiNThirtyInitialEvent extends InicioDeSesiNThirtyEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNThirtyEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
