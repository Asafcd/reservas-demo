// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtytwoEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtytwo widget is first created.
class InicioDeSesiNSixtytwoInitialEvent extends InicioDeSesiNSixtytwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNSixtytwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
