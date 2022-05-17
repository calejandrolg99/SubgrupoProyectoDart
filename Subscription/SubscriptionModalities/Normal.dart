import '../Subscription.dart';
import '../ModalityEnum.dart';
import '../../PaymentMechanism/PaymentMechanism.dart';

class Normal extends Subscription {
  Normal(num mount, String status, Modality modality)
      : super(mount, status, modality) {}

  //GETTERS Y SETTERS
  @override
  num getMountSub() {
    return this.getMount();
  }

  //METODOS
  @override
  pay(PaymentMechanism paymentMechanism) {
    paymentMechanism.pay(this.getMount());
  }
}
