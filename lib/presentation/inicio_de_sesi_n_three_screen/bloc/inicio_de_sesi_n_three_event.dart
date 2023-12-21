// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThreeEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThree widget is first created.
class InicioDeSesiNThreeInitialEvent extends InicioDeSesiNThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends InicioDeSesiNThreeEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
