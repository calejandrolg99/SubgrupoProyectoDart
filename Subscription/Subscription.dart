import 'dart:svg';
import '../PaymentMechanism/PaymentMechanism.dart';
import 'ModalityEnum.dart';

abstract class Subscription {
  //ATRIBUTOS
  Number _mount;
  String _status;
  Modality _modality;

  Subscription(this._mount, this._status, this._modality) {}

  //GETTERS Y SETTTERS
  setMount(Number mount) {
    this._mount = mount;
  }

  String getStatus() {
    return this._status;
  }

  setStatus(String status) {
    this._status = status;
  }

  Modality getModality() {
    return this._modality;
  }

  setModality(Modality modality) {
    this._modality = modality;
  }

  //METODOS ABSTRACTOS
  Number getMount();
  pay(PaymentMechanism paymentMechanism);
}
