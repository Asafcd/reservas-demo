// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSeventysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSeventysixEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSeventysix widget is first created.
class InicioDeSesiNSeventysixInitialEvent extends InicioDeSesiNSeventysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNSeventysixEvent {
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
