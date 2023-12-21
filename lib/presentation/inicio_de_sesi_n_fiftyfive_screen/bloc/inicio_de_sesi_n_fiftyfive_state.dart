// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyfive_bloc.dart';

/// Represents the state of InicioDeSesiNFiftyfive in the application.
class InicioDeSesiNFiftyfiveState extends Equatable {
  InicioDeSesiNFiftyfiveState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFiftyfiveModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNFiftyfiveModel? inicioDeSesiNFiftyfiveModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNFiftyfiveModelObj,
      ];
  InicioDeSesiNFiftyfiveState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNFiftyfiveModel? inicioDeSesiNFiftyfiveModelObj,
  }) {
    return InicioDeSesiNFiftyfiveState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFiftyfiveModelObj:
          inicioDeSesiNFiftyfiveModelObj ?? this.inicioDeSesiNFiftyfiveModelObj,
    );
  }
}
