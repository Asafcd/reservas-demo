// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyone_bloc.dart';

/// Represents the state of InicioDeSesiNFortyone in the application.
class InicioDeSesiNFortyoneState extends Equatable {
  InicioDeSesiNFortyoneState({
    this.productController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFortyoneModelObj,
  });

  TextEditingController? productController;

  InicioDeSesiNFortyoneModel? inicioDeSesiNFortyoneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productController,
        sliderIndex,
        inicioDeSesiNFortyoneModelObj,
      ];
  InicioDeSesiNFortyoneState copyWith({
    TextEditingController? productController,
    int? sliderIndex,
    InicioDeSesiNFortyoneModel? inicioDeSesiNFortyoneModelObj,
  }) {
    return InicioDeSesiNFortyoneState(
      productController: productController ?? this.productController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFortyoneModelObj:
          inicioDeSesiNFortyoneModelObj ?? this.inicioDeSesiNFortyoneModelObj,
    );
  }
}
