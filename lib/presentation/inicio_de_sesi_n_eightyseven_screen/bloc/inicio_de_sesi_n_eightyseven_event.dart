// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNEightyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNEightysevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNEightyseven widget is first created.
class InicioDeSesiNEightysevenInitialEvent
    extends InicioDeSesiNEightysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNEightysevenEvent {
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
