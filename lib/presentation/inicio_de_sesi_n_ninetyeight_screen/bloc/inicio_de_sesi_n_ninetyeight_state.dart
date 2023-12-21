// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetyeight_bloc.dart';

/// Represents the state of InicioDeSesiNNinetyeight in the application.
class InicioDeSesiNNinetyeightState extends Equatable {
  InicioDeSesiNNinetyeightState({
    this.productvalueController,
    this.inicioDeSesiNNinetyeightModelObj,
  });

  TextEditingController? productvalueController;

  InicioDeSesiNNinetyeightModel? inicioDeSesiNNinetyeightModelObj;

  @override
  List<Object?> get props => [
        productvalueController,
        inicioDeSesiNNinetyeightModelObj,
      ];
  InicioDeSesiNNinetyeightState copyWith({
    TextEditingController? productvalueController,
    InicioDeSesiNNinetyeightModel? inicioDeSesiNNinetyeightModelObj,
  }) {
    return InicioDeSesiNNinetyeightState(
      productvalueController:
          productvalueController ?? this.productvalueController,
      inicioDeSesiNNinetyeightModelObj: inicioDeSesiNNinetyeightModelObj ??
          this.inicioDeSesiNNinetyeightModelObj,
    );
  }
}
