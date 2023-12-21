// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyone_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyone in the application.
class InicioDeSesiNTwentyoneState extends Equatable {
  InicioDeSesiNTwentyoneState({
    this.topAppBarController,
    this.sliderIndex = 0,
    this.inicioDeSesiNTwentyoneModelObj,
  });

  TextEditingController? topAppBarController;

  InicioDeSesiNTwentyoneModel? inicioDeSesiNTwentyoneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        topAppBarController,
        sliderIndex,
        inicioDeSesiNTwentyoneModelObj,
      ];
  InicioDeSesiNTwentyoneState copyWith({
    TextEditingController? topAppBarController,
    int? sliderIndex,
    InicioDeSesiNTwentyoneModel? inicioDeSesiNTwentyoneModelObj,
  }) {
    return InicioDeSesiNTwentyoneState(
      topAppBarController: topAppBarController ?? this.topAppBarController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNTwentyoneModelObj:
          inicioDeSesiNTwentyoneModelObj ?? this.inicioDeSesiNTwentyoneModelObj,
    );
  }
}
