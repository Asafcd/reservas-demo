// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventysix_bloc.dart';

/// Represents the state of InicioDeSesiNSeventysix in the application.
class InicioDeSesiNSeventysixState extends Equatable {
  InicioDeSesiNSeventysixState({
    this.sliderIndex = 0,
    this.inicioDeSesiNSeventysixModelObj,
  });

  InicioDeSesiNSeventysixModel? inicioDeSesiNSeventysixModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inicioDeSesiNSeventysixModelObj,
      ];
  InicioDeSesiNSeventysixState copyWith({
    int? sliderIndex,
    InicioDeSesiNSeventysixModel? inicioDeSesiNSeventysixModelObj,
  }) {
    return InicioDeSesiNSeventysixState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNSeventysixModelObj: inicioDeSesiNSeventysixModelObj ??
          this.inicioDeSesiNSeventysixModelObj,
    );
  }
}
