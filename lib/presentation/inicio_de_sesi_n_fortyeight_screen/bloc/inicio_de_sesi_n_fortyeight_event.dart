// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortyeightEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortyeight widget is first created.
class InicioDeSesiNFortyeightInitialEvent extends InicioDeSesiNFortyeightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNFortyeightEvent {
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
