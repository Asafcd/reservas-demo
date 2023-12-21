// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortynine_bloc.dart';

/// Represents the state of InicioDeSesiNFortynine in the application.
class InicioDeSesiNFortynineState extends Equatable {
  InicioDeSesiNFortynineState({
    this.searchController,
    this.inicioDeSesiNFortynineModelObj,
  });

  TextEditingController? searchController;

  InicioDeSesiNFortynineModel? inicioDeSesiNFortynineModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inicioDeSesiNFortynineModelObj,
      ];
  InicioDeSesiNFortynineState copyWith({
    TextEditingController? searchController,
    InicioDeSesiNFortynineModel? inicioDeSesiNFortynineModelObj,
  }) {
    return InicioDeSesiNFortynineState(
      searchController: searchController ?? this.searchController,
      inicioDeSesiNFortynineModelObj:
          inicioDeSesiNFortynineModelObj ?? this.inicioDeSesiNFortynineModelObj,
    );
  }
}
