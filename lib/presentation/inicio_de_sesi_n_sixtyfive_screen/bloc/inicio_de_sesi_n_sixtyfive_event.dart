// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNSixtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNSixtyfiveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNSixtyfive widget is first created.
class InicioDeSesiNSixtyfiveInitialEvent extends InicioDeSesiNSixtyfiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InicioDeSesiNSixtyfiveEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
