// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_nineteen_bloc.dart';

/// Represents the state of InicioDeSesiNNineteen in the application.
class InicioDeSesiNNineteenState extends Equatable {
  InicioDeSesiNNineteenState({
    this.sliderIndex = 0,
    this.inicioDeSesiNNineteenModelObj,
  });

  InicioDeSesiNNineteenModel? inicioDeSesiNNineteenModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inicioDeSesiNNineteenModelObj,
      ];
  InicioDeSesiNNineteenState copyWith({
    int? sliderIndex,
    InicioDeSesiNNineteenModel? inicioDeSesiNNineteenModelObj,
  }) {
    return InicioDeSesiNNineteenState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNNineteenModelObj:
          inicioDeSesiNNineteenModelObj ?? this.inicioDeSesiNNineteenModelObj,
    );
  }
}
