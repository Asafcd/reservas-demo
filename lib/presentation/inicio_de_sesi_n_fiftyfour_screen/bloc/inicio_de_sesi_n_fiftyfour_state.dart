// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyfour_bloc.dart';

/// Represents the state of InicioDeSesiNFiftyfour in the application.
class InicioDeSesiNFiftyfourState extends Equatable {
  InicioDeSesiNFiftyfourState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFiftyfourModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNFiftyfourModel? inicioDeSesiNFiftyfourModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNFiftyfourModelObj,
      ];
  InicioDeSesiNFiftyfourState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNFiftyfourModel? inicioDeSesiNFiftyfourModelObj,
  }) {
    return InicioDeSesiNFiftyfourState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFiftyfourModelObj:
          inicioDeSesiNFiftyfourModelObj ?? this.inicioDeSesiNFiftyfourModelObj,
    );
  }
}
