// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyone_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNFiftyoneTabContainer in the application.
class InicioDeSesiNFiftyoneTabContainerState extends Equatable {
  InicioDeSesiNFiftyoneTabContainerState(
      {this.inicioDeSesiNFiftyoneTabContainerModelObj});

  InicioDeSesiNFiftyoneTabContainerModel?
      inicioDeSesiNFiftyoneTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFiftyoneTabContainerModelObj,
      ];
  InicioDeSesiNFiftyoneTabContainerState copyWith(
      {InicioDeSesiNFiftyoneTabContainerModel?
          inicioDeSesiNFiftyoneTabContainerModelObj}) {
    return InicioDeSesiNFiftyoneTabContainerState(
      inicioDeSesiNFiftyoneTabContainerModelObj:
          inicioDeSesiNFiftyoneTabContainerModelObj ??
              this.inicioDeSesiNFiftyoneTabContainerModelObj,
    );
  }
}
