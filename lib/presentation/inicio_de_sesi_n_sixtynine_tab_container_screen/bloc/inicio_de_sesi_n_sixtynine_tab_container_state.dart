// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtynine_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNSixtynineTabContainer in the application.
class InicioDeSesiNSixtynineTabContainerState extends Equatable {
  InicioDeSesiNSixtynineTabContainerState(
      {this.inicioDeSesiNSixtynineTabContainerModelObj});

  InicioDeSesiNSixtynineTabContainerModel?
      inicioDeSesiNSixtynineTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSixtynineTabContainerModelObj,
      ];
  InicioDeSesiNSixtynineTabContainerState copyWith(
      {InicioDeSesiNSixtynineTabContainerModel?
          inicioDeSesiNSixtynineTabContainerModelObj}) {
    return InicioDeSesiNSixtynineTabContainerState(
      inicioDeSesiNSixtynineTabContainerModelObj:
          inicioDeSesiNSixtynineTabContainerModelObj ??
              this.inicioDeSesiNSixtynineTabContainerModelObj,
    );
  }
}
