// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ten_bloc.dart';

/// Represents the state of InicioDeSesiNTen in the application.
class InicioDeSesiNTenState extends Equatable {
  InicioDeSesiNTenState({
    this.otpController,
    this.inicioDeSesiNTenModelObj,
  });

  TextEditingController? otpController;

  InicioDeSesiNTenModel? inicioDeSesiNTenModelObj;

  @override
  List<Object?> get props => [
        otpController,
        inicioDeSesiNTenModelObj,
      ];
  InicioDeSesiNTenState copyWith({
    TextEditingController? otpController,
    InicioDeSesiNTenModel? inicioDeSesiNTenModelObj,
  }) {
    return InicioDeSesiNTenState(
      otpController: otpController ?? this.otpController,
      inicioDeSesiNTenModelObj:
          inicioDeSesiNTenModelObj ?? this.inicioDeSesiNTenModelObj,
    );
  }
}
