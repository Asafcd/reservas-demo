// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftythree_bloc.dart';

/// Represents the state of InicioDeSesiNFiftythree in the application.
class InicioDeSesiNFiftythreeState extends Equatable {
  InicioDeSesiNFiftythreeState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFiftythreeModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNFiftythreeModel? inicioDeSesiNFiftythreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNFiftythreeModelObj,
      ];
  InicioDeSesiNFiftythreeState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNFiftythreeModel? inicioDeSesiNFiftythreeModelObj,
  }) {
    return InicioDeSesiNFiftythreeState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFiftythreeModelObj: inicioDeSesiNFiftythreeModelObj ??
          this.inicioDeSesiNFiftythreeModelObj,
    );
  }
}
