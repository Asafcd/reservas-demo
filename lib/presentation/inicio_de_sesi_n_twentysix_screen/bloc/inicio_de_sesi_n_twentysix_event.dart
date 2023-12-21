// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentysix widget is first created.
class InicioDeSesiNTwentysixInitialEvent extends InicioDeSesiNTwentysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNTwentysixEvent {
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
class UpdateChipView1Event extends InicioDeSesiNTwentysixEvent {
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
