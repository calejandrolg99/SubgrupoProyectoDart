import '../PaymentMechanism.dart';

class CreditCard implements PaymentMechanism {
  //ATRIBUTOS
  num _cardNumber;
  num _securityCode;
  String _type;
  DateTime _expiration;

  CreditCard(
      this._cardNumber, this._securityCode, this._type, this._expiration) {}

  //GETTERS Y SETTERS
  num getCardNumber() {
    return this._cardNumber;
  }

  setCardNumber(num cardNumber) {
    this._cardNumber = cardNumber;
  }

  num getSecurityCode() {
    return this._securityCode;
  }

  setSecurityCode(num securityCode) {
    this._securityCode = securityCode;
  }

  String getType() {
    return this._type;
  }

  setType(String type) {
    this._type = type;
  }

  DateTime getExpiration() {
    return this._expiration;
  }

  setExpiration(DateTime expiration) {
    this._expiration = expiration;
  }

  //METODOS
  @override
  pay(num mount) {
    try {
      //SE INTENTA PAGAR
    } catch (e) {
      print(e);
    }
    //Servicio externo de pago con tarjeta
  }
}
