// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentythree_bloc.dart';

/// Represents the state of InicioDeSesiNTwentythree in the application.
class InicioDeSesiNTwentythreeState extends Equatable {
  InicioDeSesiNTwentythreeState({
    this.sliderIndex = 0,
    this.inicioDeSesiNTwentythreeModelObj,
  });

  InicioDeSesiNTwentythreeModel? inicioDeSesiNTwentythreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inicioDeSesiNTwentythreeModelObj,
      ];
  InicioDeSesiNTwentythreeState copyWith({
    int? sliderIndex,
    InicioDeSesiNTwentythreeModel? inicioDeSesiNTwentythreeModelObj,
  }) {
    return InicioDeSesiNTwentythreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNTwentythreeModelObj: inicioDeSesiNTwentythreeModelObj ??
          this.inicioDeSesiNTwentythreeModelObj,
    );
  }
}
