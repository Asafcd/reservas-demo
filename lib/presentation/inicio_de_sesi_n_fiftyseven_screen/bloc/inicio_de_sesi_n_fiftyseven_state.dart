// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyseven_bloc.dart';

/// Represents the state of InicioDeSesiNFiftyseven in the application.
class InicioDeSesiNFiftysevenState extends Equatable {
  InicioDeSesiNFiftysevenState({
    this.topAppBarController,
    this.sliderIndex = 0,
    this.inicioDeSesiNFiftysevenModelObj,
  });

  TextEditingController? topAppBarController;

  InicioDeSesiNFiftysevenModel? inicioDeSesiNFiftysevenModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        topAppBarController,
        sliderIndex,
        inicioDeSesiNFiftysevenModelObj,
      ];
  InicioDeSesiNFiftysevenState copyWith({
    TextEditingController? topAppBarController,
    int? sliderIndex,
    InicioDeSesiNFiftysevenModel? inicioDeSesiNFiftysevenModelObj,
  }) {
    return InicioDeSesiNFiftysevenState(
      topAppBarController: topAppBarController ?? this.topAppBarController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNFiftysevenModelObj: inicioDeSesiNFiftysevenModelObj ??
          this.inicioDeSesiNFiftysevenModelObj,
    );
  }
}
