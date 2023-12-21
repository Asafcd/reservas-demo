// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventyseven_tab_container_bloc.dart';

/// Represents the state of InicioDeSesiNSeventysevenTabContainer in the application.
class InicioDeSesiNSeventysevenTabContainerState extends Equatable {
  InicioDeSesiNSeventysevenTabContainerState(
      {this.inicioDeSesiNSeventysevenTabContainerModelObj});

  InicioDeSesiNSeventysevenTabContainerModel?
      inicioDeSesiNSeventysevenTabContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventysevenTabContainerModelObj,
      ];
  InicioDeSesiNSeventysevenTabContainerState copyWith(
      {InicioDeSesiNSeventysevenTabContainerModel?
          inicioDeSesiNSeventysevenTabContainerModelObj}) {
    return InicioDeSesiNSeventysevenTabContainerState(
      inicioDeSesiNSeventysevenTabContainerModelObj:
          inicioDeSesiNSeventysevenTabContainerModelObj ??
              this.inicioDeSesiNSeventysevenTabContainerModelObj,
    );
  }
}
