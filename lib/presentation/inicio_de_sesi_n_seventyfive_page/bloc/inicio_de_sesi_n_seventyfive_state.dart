// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyfive_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyfive in the application.
class InicioDeSesiNSeventyfiveState extends Equatable {
  InicioDeSesiNSeventyfiveState({
    this.sliderIndex = 0,
    this.inicioDeSesiNSeventyfiveModelObj,
  });

  InicioDeSesiNSeventyfiveModel? inicioDeSesiNSeventyfiveModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inicioDeSesiNSeventyfiveModelObj,
      ];
  InicioDeSesiNSeventyfiveState copyWith({
    int? sliderIndex,
    InicioDeSesiNSeventyfiveModel? inicioDeSesiNSeventyfiveModelObj,
  }) {
    return InicioDeSesiNSeventyfiveState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNSeventyfiveModelObj: inicioDeSesiNSeventyfiveModelObj ??
          this.inicioDeSesiNSeventyfiveModelObj,
    );
  }
}
