import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget6_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftysix_screen/models/inicio_de_sesi_n_fiftysix_model.dart';
part 'inicio_de_sesi_n_fiftysix_event.dart';
part 'inicio_de_sesi_n_fiftysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftysix according to the event that is dispatched to it.
class InicioDeSesiNFiftysixBloc
    extends Bloc<InicioDeSesiNFiftysixEvent, InicioDeSesiNFiftysixState> {
  InicioDeSesiNFiftysixBloc(InicioDeSesiNFiftysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftysixInitialEvent>(_onInitialize);
  }

  List<Widget6ItemModel> fillWidget6ItemList() {
    return List.generate(1, (index) => Widget6ItemModel());
  }

  _onInitialize(
    InicioDeSesiNFiftysixInitialEvent event,
    Emitter<InicioDeSesiNFiftysixState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNFiftysixModelObj:
            state.inicioDeSesiNFiftysixModelObj?.copyWith(
      widget6ItemList: fillWidget6ItemList(),
    )));
  }
}
