// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentynine_bloc.dart';

/// Represents the state of InicioDeSesiNTwentynine in the application.
class InicioDeSesiNTwentynineState extends Equatable {
  InicioDeSesiNTwentynineState({
    this.selectedDropDownValue,
    this.inicioDeSesiNTwentynineModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  InicioDeSesiNTwentynineModel? inicioDeSesiNTwentynineModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        inicioDeSesiNTwentynineModelObj,
      ];
  InicioDeSesiNTwentynineState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    InicioDeSesiNTwentynineModel? inicioDeSesiNTwentynineModelObj,
  }) {
    return InicioDeSesiNTwentynineState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      inicioDeSesiNTwentynineModelObj: inicioDeSesiNTwentynineModelObj ??
          this.inicioDeSesiNTwentynineModelObj,
    );
  }
}
