// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_five_bloc.dart';

/// Represents the state of InicioDeSesiNFive in the application.
class InicioDeSesiNFiveState extends Equatable {
  InicioDeSesiNFiveState({
    this.otpController,
    this.inicioDeSesiNFiveModelObj,
  });

  TextEditingController? otpController;

  InicioDeSesiNFiveModel? inicioDeSesiNFiveModelObj;

  @override
  List<Object?> get props => [
        otpController,
        inicioDeSesiNFiveModelObj,
      ];
  InicioDeSesiNFiveState copyWith({
    TextEditingController? otpController,
    InicioDeSesiNFiveModel? inicioDeSesiNFiveModelObj,
  }) {
    return InicioDeSesiNFiveState(
      otpController: otpController ?? this.otpController,
      inicioDeSesiNFiveModelObj:
          inicioDeSesiNFiveModelObj ?? this.inicioDeSesiNFiveModelObj,
    );
  }
}
