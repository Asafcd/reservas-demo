// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftysix_bloc.dart';

/// Represents the state of InicioDeSesiNFiftysix in the application.
class InicioDeSesiNFiftysixState extends Equatable {
  InicioDeSesiNFiftysixState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFiftysixModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNFiftysixModel? inicioDeSesiNFiftysixModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNFiftysixModelObj,
      ];
  InicioDeSesiNFiftysixState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNFiftysixModel? inicioDeSesiNFiftysixModelObj,
  }) {
    return InicioDeSesiNFiftysixState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFiftysixModelObj:
          inicioDeSesiNFiftysixModelObj ?? this.inicioDeSesiNFiftysixModelObj,
    );
  }
}
