import '../Notifier/Notifier.dart';
import 'PhoneNumber.dart';
import '../Subscription/Subscription.dart';
import '../PaymentMechanism/PaymentMechanism.dart';
import '../Observer/Observer.dart';

class Patient implements Observer {
  //ATRIBUTOS
  String _name;
  num _age;
  num _weight;
  String _profession;
  String _email;
  List<PhoneNumber> _phones;
  Subscription _subscription;

  Patient(this._name, this._age, this._weight, this._profession, this._email,
      this._phones, this._subscription) {}

  //GETTERS Y SETTERS
  String getName() {
    return this._name;
  }

  setName(String name) {
    this._name = name;
  }

  num getAge() {
    return this._age;
  }

  setAge(num age) {
    this._age = age;
  }

  num getWeight() {
    return this._weight;
  }

  setWeight(num weight) {
    this._weight = weight;
  }

  String getProfession() {
    return this._profession;
  }

  setProfession(String profession) {
    this._profession = profession;
  }

  String getEmail() {
    return this._email;
  }

  setEmail(String email) {
    this._email = email;
  }

  List<PhoneNumber> getPhones() {
    return this._phones;
  }

  Subscription getSubscription() {
    return this._subscription;
  }

  //METODOS
  addNumber(PhoneNumber phoneNumber) {
    this._phones.add(phoneNumber);
  }

  paySubscription(PaymentMechanism paymentMechanism) {
    //paymentMechanism.pay(mount) //SE PROCEDE AL PAGO
  }

  deleteNumber(PhoneNumber phone) {
    this._phones.remove(phone);
  }

  update(Notifier context) {
    context.send(this);
  }
}
