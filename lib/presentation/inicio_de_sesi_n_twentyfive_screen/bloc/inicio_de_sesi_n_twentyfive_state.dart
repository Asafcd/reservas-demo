// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentyfive_bloc.dart';

/// Represents the state of InicioDeSesiNTwentyfive in the application.
class InicioDeSesiNTwentyfiveState extends Equatable {
  InicioDeSesiNTwentyfiveState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.inicioDeSesiNTwentyfiveModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  InicioDeSesiNTwentyfiveModel? inicioDeSesiNTwentyfiveModelObj;

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
        inicioDeSesiNTwentyfiveModelObj,
      ];
  InicioDeSesiNTwentyfiveState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    InicioDeSesiNTwentyfiveModel? inicioDeSesiNTwentyfiveModelObj,
  }) {
    return InicioDeSesiNTwentyfiveState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      inicioDeSesiNTwentyfiveModelObj: inicioDeSesiNTwentyfiveModelObj ??
          this.inicioDeSesiNTwentyfiveModelObj,
    );
  }
}
