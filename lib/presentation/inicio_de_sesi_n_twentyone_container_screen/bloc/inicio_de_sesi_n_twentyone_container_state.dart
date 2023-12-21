// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyone_container_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyoneContainer in the application.
class InicioDeSesiNTwentyoneContainerState extends Equatable {
  InicioDeSesiNTwentyoneContainerState(
      {this.inicioDeSesiNTwentyoneContainerModelObj});

  InicioDeSesiNTwentyoneContainerModel? inicioDeSesiNTwentyoneContainerModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNTwentyoneContainerModelObj,
      ];
  InicioDeSesiNTwentyoneContainerState copyWith(
      {InicioDeSesiNTwentyoneContainerModel?
          inicioDeSesiNTwentyoneContainerModelObj}) {
    return InicioDeSesiNTwentyoneContainerState(
      inicioDeSesiNTwentyoneContainerModelObj:
          inicioDeSesiNTwentyoneContainerModelObj ??
              this.inicioDeSesiNTwentyoneContainerModelObj,
    );
  }
}
