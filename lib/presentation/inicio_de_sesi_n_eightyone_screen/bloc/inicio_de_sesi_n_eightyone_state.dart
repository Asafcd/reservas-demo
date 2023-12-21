// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyone_bloc.dart';

/// Represents the state of InicioDeSesiNEightyone in the application.
class InicioDeSesiNEightyoneState extends Equatable {
  InicioDeSesiNEightyoneState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNEightyoneModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNEightyoneModel? inicioDeSesiNEightyoneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNEightyoneModelObj,
      ];
  InicioDeSesiNEightyoneState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNEightyoneModel? inicioDeSesiNEightyoneModelObj,
  }) {
    return InicioDeSesiNEightyoneState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNEightyoneModelObj:
          inicioDeSesiNEightyoneModelObj ?? this.inicioDeSesiNEightyoneModelObj,
    );
  }
}
