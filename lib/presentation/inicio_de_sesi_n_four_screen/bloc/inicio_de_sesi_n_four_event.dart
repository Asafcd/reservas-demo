// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNFourEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNFour widget is first created.
class InicioDeSesiNFourInitialEvent extends InicioDeSesiNFourEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends InicioDeSesiNFourEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
