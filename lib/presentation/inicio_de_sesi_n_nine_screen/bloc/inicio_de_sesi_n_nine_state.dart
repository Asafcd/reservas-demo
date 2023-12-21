// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_nine_bloc.dart';

/// Represents the state of InicioDeSesiNNine in the application.
class InicioDeSesiNNineState extends Equatable {
  InicioDeSesiNNineState({
    this.otpController,
    this.inicioDeSesiNNineModelObj,
  });

  TextEditingController? otpController;

  InicioDeSesiNNineModel? inicioDeSesiNNineModelObj;

  @override
  List<Object?> get props => [
        otpController,
        inicioDeSesiNNineModelObj,
      ];
  InicioDeSesiNNineState copyWith({
    TextEditingController? otpController,
    InicioDeSesiNNineModel? inicioDeSesiNNineModelObj,
  }) {
    return InicioDeSesiNNineState(
      otpController: otpController ?? this.otpController,
      inicioDeSesiNNineModelObj:
          inicioDeSesiNNineModelObj ?? this.inicioDeSesiNNineModelObj,
    );
  }
}
