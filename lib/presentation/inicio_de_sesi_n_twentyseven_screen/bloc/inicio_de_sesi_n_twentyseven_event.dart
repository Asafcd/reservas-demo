// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentysevenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyseven widget is first created.
class InicioDeSesiNTwentysevenInitialEvent
    extends InicioDeSesiNTwentysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNTwentysevenEvent {
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

///Event for changing ChipView selection
class UpdateChipView1Event extends InicioDeSesiNTwentysevenEvent {
  UpdateChipView1Event({
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
