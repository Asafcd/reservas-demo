// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventy_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNSeventyTabContainer in the application.
class InicioDeSesiNSeventyTabContainerState extends Equatable {
  InicioDeSesiNSeventyTabContainerState(
      {this.inicioDeSesiNSeventyTabContainerModelObj});

  InicioDeSesiNSeventyTabContainerModel?
      inicioDeSesiNSeventyTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventyTabContainerModelObj,
      ];
  InicioDeSesiNSeventyTabContainerState copyWith(
      {InicioDeSesiNSeventyTabContainerModel?
          inicioDeSesiNSeventyTabContainerModelObj}) {
    return InicioDeSesiNSeventyTabContainerState(
      inicioDeSesiNSeventyTabContainerModelObj:
          inicioDeSesiNSeventyTabContainerModelObj ??
              this.inicioDeSesiNSeventyTabContainerModelObj,
    );
  }
}
