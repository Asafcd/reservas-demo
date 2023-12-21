// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentytwo_bloc.dart';

/// Represents the state of InicioDeSesiNTwentytwo in the application.
class InicioDeSesiNTwentytwoState extends Equatable {
  InicioDeSesiNTwentytwoState({
    this.topAppBarController,
    this.ubicacinactualvalueController,
    this.sliderIndex = 0,
    this.inicioDeSesiNTwentytwoModelObj,
  });

  TextEditingController? topAppBarController;

  TextEditingController? ubicacinactualvalueController;

  InicioDeSesiNTwentytwoModel? inicioDeSesiNTwentytwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        topAppBarController,
        ubicacinactualvalueController,
        sliderIndex,
        inicioDeSesiNTwentytwoModelObj,
      ];
  InicioDeSesiNTwentytwoState copyWith({
    TextEditingController? topAppBarController,
    TextEditingController? ubicacinactualvalueController,
    int? sliderIndex,
    InicioDeSesiNTwentytwoModel? inicioDeSesiNTwentytwoModelObj,
  }) {
    return InicioDeSesiNTwentytwoState(
      topAppBarController: topAppBarController ?? this.topAppBarController,
      ubicacinactualvalueController:
          ubicacinactualvalueController ?? this.ubicacinactualvalueController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNTwentytwoModelObj:
          inicioDeSesiNTwentytwoModelObj ?? this.inicioDeSesiNTwentytwoModelObj,
    );
  }
}
