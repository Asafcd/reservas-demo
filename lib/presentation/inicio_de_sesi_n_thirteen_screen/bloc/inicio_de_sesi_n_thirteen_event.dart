// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNThirteenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNThirteen widget is first created.
class InicioDeSesiNThirteenInitialEvent extends InicioDeSesiNThirteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends InicioDeSesiNThirteenEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends InicioDeSesiNThirteenEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
