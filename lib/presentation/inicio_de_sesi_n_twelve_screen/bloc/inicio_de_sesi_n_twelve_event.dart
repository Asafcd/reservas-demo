// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTwelveEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTwelve widget is first created.
class InicioDeSesiNTwelveInitialEvent extends InicioDeSesiNTwelveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends InicioDeSesiNTwelveEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends InicioDeSesiNTwelveEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
