// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtyoneEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtyone widget is first created.
class InicioDeSesiNSixtyoneInitialEvent extends InicioDeSesiNSixtyoneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InicioDeSesiNSixtyoneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
