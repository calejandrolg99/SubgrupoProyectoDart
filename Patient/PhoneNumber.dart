abstract class PhoneNumber {
  //ATRIBUTOS
  String _phone;
  String _type;
  String _countryCode;
  String _prefixCode;

  PhoneNumber(this._phone, this._type, this._countryCode, this._prefixCode) {}

  //GETTERS Y SETTERS
  String getPhone() {
    return this._phone;
  }

  setPhone(String phone) {
    this._phone = phone;
  }

  String getType() {
    return this._type;
  }

  setType(String type) {
    this._type = type;
  }

  String getCountryCode() {
    return this._countryCode;
  }

  setCountryCode(String countryCode) {
    this._countryCode = countryCode;
  }

  String getPrefixCode() {
    return this._prefixCode;
  }

  setPrefixCode(String prefixCode) {
    this._prefixCode = prefixCode;
  }

  //METODOS ABSTRACTOS
  getNumber();
}
