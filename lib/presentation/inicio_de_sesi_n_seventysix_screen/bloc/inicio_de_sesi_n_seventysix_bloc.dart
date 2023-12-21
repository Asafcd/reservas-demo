import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/baroasis6_item_model.dart';
import '../models/widget12_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventysix_screen/models/inicio_de_sesi_n_seventysix_model.dart';
part 'inicio_de_sesi_n_seventysix_event.dart';
part 'inicio_de_sesi_n_seventysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventysix according to the event that is dispatched to it.
class InicioDeSesiNSeventysixBloc
    extends Bloc<InicioDeSesiNSeventysixEvent, InicioDeSesiNSeventysixState> {
  InicioDeSesiNSeventysixBloc(InicioDeSesiNSeventysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventysixInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InicioDeSesiNSeventysixState> emit,
  ) {
    List<Widget12ItemModel> newList = List<Widget12ItemModel>.from(
        state.inicioDeSesiNSeventysixModelObj!.widget12ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNSeventysixModelObj: state.inicioDeSesiNSeventysixModelObj
            ?.copyWith(widget12ItemList: newList)));
  }

  List<Baroasis6ItemModel> fillBaroasis6ItemList() {
    return [Baroasis6ItemModel(image: ImageConstant.imgRectangle12405220x412)];
  }

  List<Widget12ItemModel> fillWidget12ItemList() {
    return List.generate(5, (index) => Widget12ItemModel());
  }

  _onInitialize(
    InicioDeSesiNSeventysixInitialEvent event,
    Emitter<InicioDeSesiNSeventysixState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNSeventysixModelObj:
            state.inicioDeSesiNSeventysixModelObj?.copyWith(
      baroasis6ItemList: fillBaroasis6ItemList(),
      widget12ItemList: fillWidget12ItemList(),
    )));
  }
}
