// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventynine_bloc.dart';

/// Represents the state of InicioDeSesiNSeventynine in the application.
class InicioDeSesiNSeventynineState extends Equatable {
  InicioDeSesiNSeventynineState({
    this.topAppBarController,
    this.sliderIndex = 0,
    this.inicioDeSesiNSeventynineModelObj,
  });

  TextEditingController? topAppBarController;

  InicioDeSesiNSeventynineModel? inicioDeSesiNSeventynineModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        topAppBarController,
        sliderIndex,
        inicioDeSesiNSeventynineModelObj,
      ];
  InicioDeSesiNSeventynineState copyWith({
    TextEditingController? topAppBarController,
    int? sliderIndex,
    InicioDeSesiNSeventynineModel? inicioDeSesiNSeventynineModelObj,
  }) {
    return InicioDeSesiNSeventynineState(
      topAppBarController: topAppBarController ?? this.topAppBarController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inicioDeSesiNSeventynineModelObj: inicioDeSesiNSeventynineModelObj ??
          this.inicioDeSesiNSeventynineModelObj,
    );
  }
}
