// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyseven_bloc.dart';

/// Represents the state of InicioDeSesiNFortyseven in the application.
class InicioDeSesiNFortysevenState extends Equatable {
  InicioDeSesiNFortysevenState({
    this.searchController,
    this.inicioDeSesiNFortysevenModelObj,
  });

  TextEditingController? searchController;

  InicioDeSesiNFortysevenModel? inicioDeSesiNFortysevenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inicioDeSesiNFortysevenModelObj,
      ];
  InicioDeSesiNFortysevenState copyWith({
    TextEditingController? searchController,
    InicioDeSesiNFortysevenModel? inicioDeSesiNFortysevenModelObj,
  }) {
    return InicioDeSesiNFortysevenState(
      searchController: searchController ?? this.searchController,
      inicioDeSesiNFortysevenModelObj: inicioDeSesiNFortysevenModelObj ??
          this.inicioDeSesiNFortysevenModelObj,
    );
  }
}
