// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtyEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixty widget is first created.
class InicioDeSesiNSixtyInitialEvent extends InicioDeSesiNSixtyEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNSixtyEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
