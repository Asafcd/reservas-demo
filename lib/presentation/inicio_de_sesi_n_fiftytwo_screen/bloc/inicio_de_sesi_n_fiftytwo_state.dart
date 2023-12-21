// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftytwo_bloc.dart';

/// Represents the state of InicioDeSesiNFiftytwo in the application.
class InicioDeSesiNFiftytwoState extends Equatable {
  InicioDeSesiNFiftytwoState({
    this.topAppBarController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFiftytwoModelObj,
  });

  TextEditingController? topAppBarController;

  InicioDeSesiNFiftytwoModel? inicioDeSesiNFiftytwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        topAppBarController,
        sliderIndex,
        inicioDeSesiNFiftytwoModelObj,
      ];
  InicioDeSesiNFiftytwoState copyWith({
    TextEditingController? topAppBarController,
    int? sliderIndex,
    InicioDeSesiNFiftytwoModel? inicioDeSesiNFiftytwoModelObj,
  }) {
    return InicioDeSesiNFiftytwoState(
      topAppBarController: topAppBarController ?? this.topAppBarController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFiftytwoModelObj:
          inicioDeSesiNFiftytwoModelObj ?? this.inicioDeSesiNFiftytwoModelObj,
    );
  }
}
