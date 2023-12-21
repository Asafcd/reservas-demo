// ignore_for_file: must_be_immutable

part of 'reservas_restaurantes_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReservasRestaurantesTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReservasRestaurantesTenEvent extends Equatable {}

/// Event that is dispatched when the ReservasRestaurantesTen widget is first created.
class ReservasRestaurantesTenInitialEvent extends ReservasRestaurantesTenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ReservasRestaurantesTenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ReservasRestaurantesTenEvent {
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
