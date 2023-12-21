// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyeight_bloc.dart';

/// Represents the state of InicioDeSesiNFortyeight in the application.
class InicioDeSesiNFortyeightState extends Equatable {
  InicioDeSesiNFortyeightState({
    this.sliderIndex = 0,
    this.inicioDeSesiNFortyeightModelObj,
  });

  InicioDeSesiNFortyeightModel? inicioDeSesiNFortyeightModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inicioDeSesiNFortyeightModelObj,
      ];
  InicioDeSesiNFortyeightState copyWith({
    int? sliderIndex,
    InicioDeSesiNFortyeightModel? inicioDeSesiNFortyeightModelObj,
  }) {
    return InicioDeSesiNFortyeightState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFortyeightModelObj: inicioDeSesiNFortyeightModelObj ??
          this.inicioDeSesiNFortyeightModelObj,
    );
  }
}
