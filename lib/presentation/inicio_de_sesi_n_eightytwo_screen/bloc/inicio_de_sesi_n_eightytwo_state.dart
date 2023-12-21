// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightytwo_bloc.dart';

/// Represents the state of InicioDeSesiNEightytwo in the application.
class InicioDeSesiNEightytwoState extends Equatable {
  InicioDeSesiNEightytwoState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNEightytwoModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNEightytwoModel? inicioDeSesiNEightytwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNEightytwoModelObj,
      ];
  InicioDeSesiNEightytwoState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNEightytwoModel? inicioDeSesiNEightytwoModelObj,
  }) {
    return InicioDeSesiNEightytwoState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNEightytwoModelObj:
          inicioDeSesiNEightytwoModelObj ?? this.inicioDeSesiNEightytwoModelObj,
    );
  }
}
