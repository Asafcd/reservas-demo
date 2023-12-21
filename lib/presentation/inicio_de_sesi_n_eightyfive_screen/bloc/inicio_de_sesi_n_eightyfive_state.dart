// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_eightyfive_bloc.dart';

/// Represents the state of InicioDeSesiNEightyfive in the application.
class InicioDeSesiNEightyfiveState extends Equatable {
  InicioDeSesiNEightyfiveState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.inicioDeSesiNEightyfiveModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  InicioDeSesiNEightyfiveModel? inicioDeSesiNEightyfiveModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        inicioDeSesiNEightyfiveModelObj,
      ];
  InicioDeSesiNEightyfiveState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    InicioDeSesiNEightyfiveModel? inicioDeSesiNEightyfiveModelObj,
  }) {
    return InicioDeSesiNEightyfiveState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      inicioDeSesiNEightyfiveModelObj: inicioDeSesiNEightyfiveModelObj ??
          this.inicioDeSesiNEightyfiveModelObj,
    );
  }
}
