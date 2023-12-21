// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwentyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwentyfourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwentyfour widget is first created.
class InicioDeSesiNTwentyfourInitialEvent extends InicioDeSesiNTwentyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNTwentyfourEvent {
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
