// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFifteenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFifteen widget is first created.
class InicioDeSesiNFifteenInitialEvent extends InicioDeSesiNFifteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends InicioDeSesiNFifteenEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends InicioDeSesiNFifteenEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
