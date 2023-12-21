// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtythreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtythree widget is first created.
class InicioDeSesiNSixtythreeInitialEvent extends InicioDeSesiNSixtythreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNSixtythreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
