import '../PhoneNumber.dart';

class VenezuelanNumber extends PhoneNumber {
  VenezuelanNumber(
      String phone, String type, String countryCode, String prefixCode)
      : super(phone, type, countryCode, prefixCode) {}

  @override
  getNumber() {
    return this.getCountryCode() +
        ' ' +
        this.getPrefixCode() +
        '-' +
        this.getPhone();
  }
}
