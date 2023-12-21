// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_four_bloc.dart';

/// Represents the state of InicioDeSesiNFour in the application.
class InicioDeSesiNFourState extends Equatable {
  InicioDeSesiNFourState({
    this.otpController,
    this.inicioDeSesiNFourModelObj,
  });

  TextEditingController? otpController;

  InicioDeSesiNFourModel? inicioDeSesiNFourModelObj;

  @override
  List<Object?> get props => [
        otpController,
        inicioDeSesiNFourModelObj,
      ];
  InicioDeSesiNFourState copyWith({
    TextEditingController? otpController,
    InicioDeSesiNFourModel? inicioDeSesiNFourModelObj,
  }) {
    return InicioDeSesiNFourState(
      otpController: otpController ?? this.otpController,
      inicioDeSesiNFourModelObj:
          inicioDeSesiNFourModelObj ?? this.inicioDeSesiNFourModelObj,
    );
  }
}
