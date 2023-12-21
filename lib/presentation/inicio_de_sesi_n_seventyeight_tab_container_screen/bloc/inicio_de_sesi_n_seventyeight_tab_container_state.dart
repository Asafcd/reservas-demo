// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyeight_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyeightTabContainer in the application.
class InicioDeSesiNSeventyeightTabContainerState extends Equatable {
  InicioDeSesiNSeventyeightTabContainerState(
      {this.inicioDeSesiNSeventyeightTabContainerModelObj});

  InicioDeSesiNSeventyeightTabContainerModel?
      inicioDeSesiNSeventyeightTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventyeightTabContainerModelObj,
      ];
  InicioDeSesiNSeventyeightTabContainerState copyWith(
      {InicioDeSesiNSeventyeightTabContainerModel?
          inicioDeSesiNSeventyeightTabContainerModelObj}) {
    return InicioDeSesiNSeventyeightTabContainerState(
      inicioDeSesiNSeventyeightTabContainerModelObj:
          inicioDeSesiNSeventyeightTabContainerModelObj ??
              this.inicioDeSesiNSeventyeightTabContainerModelObj,
    );
  }
}
