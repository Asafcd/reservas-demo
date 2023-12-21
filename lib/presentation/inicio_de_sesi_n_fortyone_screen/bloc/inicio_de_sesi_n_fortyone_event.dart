// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFortyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFortyoneEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFortyone widget is first created.
class InicioDeSesiNFortyoneInitialEvent extends InicioDeSesiNFortyoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends InicioDeSesiNFortyoneEvent {
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
