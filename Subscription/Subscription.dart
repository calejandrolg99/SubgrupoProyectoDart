import '../PaymentMechanism/PaymentMechanism.dart';
import 'ModalityEnum.dart';

abstract class Subscription {
  //ATRIBUTOS
  num _mount;
  String _status;
  Modality _modality;

  Subscription(this._mount, this._status, this._modality) {}

  //GETTERS Y SETTTERS
  num getMount() {
    return this._mount;
  }

  setMount(num mount) {
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
  num getMountSub();
  pay(PaymentMechanism paymentMechanism);
}
