// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReservasRestaurantesNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReservasRestaurantesNineEvent extends Equatable {}

/// Event that is dispatched when the ReservasRestaurantesNine widget is first created.
class ReservasRestaurantesNineInitialEvent
    extends ReservasRestaurantesNineEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ReservasRestaurantesNineEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ReservasRestaurantesNineEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
