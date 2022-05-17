import '../Subscription.dart';
import '../ModalityEnum.dart';
import '../../PaymentMechanism/PaymentMechanism.dart';

class WithBenefits extends Subscription {
  num _reduction;

  WithBenefits(this._reduction, num mount, String status, Modality modality)
      : super(mount, status, modality) {}

  //GETTERS Y SETTERS
  @override
  num getMountSub() {
    return this.getMount() - this._reduction;
  }

  //METODOS
  @override
  pay(PaymentMechanism paymentMechanism) {
    paymentMechanism.pay(this.getMount() - this._reduction);
  }
}
