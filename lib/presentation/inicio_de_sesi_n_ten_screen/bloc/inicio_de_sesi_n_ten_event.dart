// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InicioDeSesiNTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InicioDeSesiNTenEvent extends Equatable {}

/// Event that is dispatched when the InicioDeSesiNTen widget is first created.
class InicioDeSesiNTenInitialEvent extends InicioDeSesiNTenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends InicioDeSesiNTenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
