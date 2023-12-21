// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortysix_bloc.dart';

/// Represents the state of InicioDeSesiNFortysix in the application.
class InicioDeSesiNFortysixState extends Equatable {
  InicioDeSesiNFortysixState({
    this.searchController,
    this.inicioDeSesiNFortysixModelObj,
  });

  TextEditingController? searchController;

  InicioDeSesiNFortysixModel? inicioDeSesiNFortysixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inicioDeSesiNFortysixModelObj,
      ];
  InicioDeSesiNFortysixState copyWith({
    TextEditingController? searchController,
    InicioDeSesiNFortysixModel? inicioDeSesiNFortysixModelObj,
  }) {
    return InicioDeSesiNFortysixState(
      searchController: searchController ?? this.searchController,
      inicioDeSesiNFortysixModelObj:
          inicioDeSesiNFortysixModelObj ?? this.inicioDeSesiNFortysixModelObj,
    );
  }
}
