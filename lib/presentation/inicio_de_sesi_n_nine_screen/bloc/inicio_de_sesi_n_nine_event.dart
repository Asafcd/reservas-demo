// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNNineEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNNine widget is first created.
class InicioDeSesiNNineInitialEvent extends InicioDeSesiNNineEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends InicioDeSesiNNineEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
