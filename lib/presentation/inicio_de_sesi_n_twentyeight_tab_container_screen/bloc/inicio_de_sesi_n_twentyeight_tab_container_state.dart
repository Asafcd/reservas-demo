// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyeight_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyeightTabContainer in the application.
class InicioDeSesiNTwentyeightTabContainerState extends Equatable {
  InicioDeSesiNTwentyeightTabContainerState(
      {this.inicioDeSesiNTwentyeightTabContainerModelObj});

  InicioDeSesiNTwentyeightTabContainerModel?
      inicioDeSesiNTwentyeightTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNTwentyeightTabContainerModelObj,
      ];
  InicioDeSesiNTwentyeightTabContainerState copyWith(
      {InicioDeSesiNTwentyeightTabContainerModel?
          inicioDeSesiNTwentyeightTabContainerModelObj}) {
    return InicioDeSesiNTwentyeightTabContainerState(
      inicioDeSesiNTwentyeightTabContainerModelObj:
          inicioDeSesiNTwentyeightTabContainerModelObj ??
              this.inicioDeSesiNTwentyeightTabContainerModelObj,
    );
  }
}
