import 'dart:html';
import 'dart:svg';

import '../PaymentMechanism.dart';

class PayPal implements PaymentMechanism {
  //ATRIBUTOS
  String _password;
  String _email;

  PayPal(this._password, this._email) {}

  //GETTERS Y SETTERS
  String getPassword() {
    return this._password;
  }

  setPassword(String password) {
    this._password = password;
  }

  String getEmail() {
    return this._email;
  }

  setEmail(String email) {
    this._email = email;
  }

  //METODOS
  @override
  pay(Number mount) {
    try {
      //SE INTENTA PAGAR
    } catch (e) {
      print(e);
    }
    //SERVICIO EXTERNO DE PAGO CON PAYPAL
  }
}
