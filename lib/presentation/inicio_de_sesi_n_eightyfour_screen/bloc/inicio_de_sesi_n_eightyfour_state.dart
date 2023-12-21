// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyfour_bloc.dart';

/// Represents the state of InicioDeSesiNEightyfour in the application.
class InicioDeSesiNEightyfourState extends Equatable {
  InicioDeSesiNEightyfourState({
    this.productvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNEightyfourModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNEightyfourModel? inicioDeSesiNEightyfourModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        productvalueController,
        sliderIndex,
        inicioDeSesiNEightyfourModelObj,
      ];
  InicioDeSesiNEightyfourState copyWith({
    TextEditingController? productvalueController,
    int? sliderIndex,
    InicioDeSesiNEightyfourModel? inicioDeSesiNEightyfourModelObj,
  }) {
    return InicioDeSesiNEightyfourState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNEightyfourModelObj: inicioDeSesiNEightyfourModelObj ??
          this.inicioDeSesiNEightyfourModelObj,
    );
  }
}
