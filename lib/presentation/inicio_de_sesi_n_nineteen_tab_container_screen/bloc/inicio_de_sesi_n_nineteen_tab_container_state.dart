// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_nineteen_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNNineteenTabContainer in the application.
class InicioDeSesiNNineteenTabContainerState extends Equatable {
  InicioDeSesiNNineteenTabContainerState(
      {this.inicioDeSesiNNineteenTabContainerModelObj});

  InicioDeSesiNNineteenTabContainerModel?
      inicioDeSesiNNineteenTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNineteenTabContainerModelObj,
      ];
  InicioDeSesiNNineteenTabContainerState copyWith(
      {InicioDeSesiNNineteenTabContainerModel?
          inicioDeSesiNNineteenTabContainerModelObj}) {
    return InicioDeSesiNNineteenTabContainerState(
      inicioDeSesiNNineteenTabContainerModelObj:
          inicioDeSesiNNineteenTabContainerModelObj ??
              this.inicioDeSesiNNineteenTabContainerModelObj,
    );
  }
}
