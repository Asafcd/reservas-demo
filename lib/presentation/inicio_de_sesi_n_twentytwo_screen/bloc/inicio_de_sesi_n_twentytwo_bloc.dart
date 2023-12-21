import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentytwo_screen/models/inicio_de_sesi_n_twentytwo_model.dart';
part 'inicio_de_sesi_n_twentytwo_event.dart';
part 'inicio_de_sesi_n_twentytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentytwo according to the event that is dispatched to it.
class InicioDeSesiNTwentytwoBloc
    extends Bloc<InicioDeSesiNTwentytwoEvent, InicioDeSesiNTwentytwoState> {
  InicioDeSesiNTwentytwoBloc(InicioDeSesiNTwentytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentytwoInitialEvent>(_onInitialize);
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return List.generate(1, (index) => Userprofile1ItemModel());
  }

  _onInitialize(
    InicioDeSesiNTwentytwoInitialEvent event,
    Emitter<InicioDeSesiNTwentytwoState> emit,
  ) async {
    emit(state.copyWith(
      topAppBarController: TextEditingController(),
      ubicacinactualvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNTwentytwoModelObj:
            state.inicioDeSesiNTwentytwoModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }
}
