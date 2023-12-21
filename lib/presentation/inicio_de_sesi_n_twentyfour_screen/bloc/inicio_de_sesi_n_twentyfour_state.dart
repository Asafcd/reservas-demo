// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyfour_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyfour in the application.
class InicioDeSesiNTwentyfourState extends Equatable {
  InicioDeSesiNTwentyfourState({
    this.sliderIndex = 0,
    this.inicioDeSesiNTwentyfourModelObj,
  });

  InicioDeSesiNTwentyfourModel? inicioDeSesiNTwentyfourModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inicioDeSesiNTwentyfourModelObj,
      ];
  InicioDeSesiNTwentyfourState copyWith({
    int? sliderIndex,
    InicioDeSesiNTwentyfourModel? inicioDeSesiNTwentyfourModelObj,
  }) {
    return InicioDeSesiNTwentyfourState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNTwentyfourModelObj: inicioDeSesiNTwentyfourModelObj ??
          this.inicioDeSesiNTwentyfourModelObj,
    );
  }
}
