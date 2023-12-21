// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightythree_bloc.dart';

/// Represents the state of InicioDeSesiNEightythree in the application.
class InicioDeSesiNEightythreeState extends Equatable {
  InicioDeSesiNEightythreeState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNEightythreeModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNEightythreeModel? inicioDeSesiNEightythreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNEightythreeModelObj,
      ];
  InicioDeSesiNEightythreeState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNEightythreeModel? inicioDeSesiNEightythreeModelObj,
  }) {
    return InicioDeSesiNEightythreeState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNEightythreeModelObj: inicioDeSesiNEightythreeModelObj ??
          this.inicioDeSesiNEightythreeModelObj,
    );
  }
}
