// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortythree_bloc.dart';

/// Represents the state of InicioDeSesiNFortythree in the application.
class InicioDeSesiNFortythreeState extends Equatable {
  InicioDeSesiNFortythreeState({
    this.uploadTextField1Controller,
    this.uploadTextField2Controller,
    this.uploadTextField3Controller,
    this.uploadTextField4Controller,
    this.uploadTextField5Controller,
    this.uploadTextField6Controller,
    this.inicioDeSesiNFortythreeModelObj,
  });

  TextEditingController? uploadTextField1Controller;

  TextEditingController? uploadTextField2Controller;

  TextEditingController? uploadTextField3Controller;

  TextEditingController? uploadTextField4Controller;

  TextEditingController? uploadTextField5Controller;

  TextEditingController? uploadTextField6Controller;

  InicioDeSesiNFortythreeModel? inicioDeSesiNFortythreeModelObj;

  @override
  List<Object?> get props => [
        uploadTextField1Controller,
        uploadTextField2Controller,
        uploadTextField3Controller,
        uploadTextField4Controller,
        uploadTextField5Controller,
        uploadTextField6Controller,
        inicioDeSesiNFortythreeModelObj,
      ];
  InicioDeSesiNFortythreeState copyWith({
    TextEditingController? uploadTextField1Controller,
    TextEditingController? uploadTextField2Controller,
    TextEditingController? uploadTextField3Controller,
    TextEditingController? uploadTextField4Controller,
    TextEditingController? uploadTextField5Controller,
    TextEditingController? uploadTextField6Controller,
    InicioDeSesiNFortythreeModel? inicioDeSesiNFortythreeModelObj,
  }) {
    return InicioDeSesiNFortythreeState(
      uploadTextField1Controller:
          uploadTextField1Controller ?? this.uploadTextField1Controller,
      uploadTextField2Controller:
          uploadTextField2Controller ?? this.uploadTextField2Controller,
      uploadTextField3Controller:
          uploadTextField3Controller ?? this.uploadTextField3Controller,
      uploadTextField4Controller:
          uploadTextField4Controller ?? this.uploadTextField4Controller,
      uploadTextField5Controller:
          uploadTextField5Controller ?? this.uploadTextField5Controller,
      uploadTextField6Controller:
          uploadTextField6Controller ?? this.uploadTextField6Controller,
      inicioDeSesiNFortythreeModelObj: inicioDeSesiNFortythreeModelObj ??
          this.inicioDeSesiNFortythreeModelObj,
    );
  }
}
