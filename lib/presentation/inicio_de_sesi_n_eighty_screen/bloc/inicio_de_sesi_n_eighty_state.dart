// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eighty_bloc.dart';

/// Represents the state of InicioDeSesiNEighty in the application.
class InicioDeSesiNEightyState extends Equatable {
  InicioDeSesiNEightyState({
    this.topAppBarController,
    this.sliderIndex = 0,
    this.inicioDeSesiNEightyModelObj,
  });

  TextEditingController? topAppBarController;

  InicioDeSesiNEightyModel? inicioDeSesiNEightyModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        topAppBarController,
        sliderIndex,
        inicioDeSesiNEightyModelObj,
      ];
  InicioDeSesiNEightyState copyWith({
    TextEditingController? topAppBarController,
    int? sliderIndex,
    InicioDeSesiNEightyModel? inicioDeSesiNEightyModelObj,
  }) {
    return InicioDeSesiNEightyState(
      topAppBarController: topAppBarController ?? this.topAppBarController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNEightyModelObj:
          inicioDeSesiNEightyModelObj ?? this.inicioDeSesiNEightyModelObj,
    );
  }
}
