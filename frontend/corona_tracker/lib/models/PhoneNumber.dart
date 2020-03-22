class PhoneNumber {
  String number;
  String regionCode;

  PhoneNumber(String _number, String _countryCode) {
    number = _number;
    //print(_country_code); TODO: Locale always giving back en-US
    _countryCode = _countryCode.substring(
      _countryCode.indexOf("_") + 1,
      _countryCode.length,
    );

    regionCode = "49"; // default
    switch (_countryCode) {
      case "DE":
        regionCode = "49";
        break;
      case "CH":
        regionCode = "41";
        break;
      case "AT":
        regionCode = "43";
        break;
      case "FR":
        regionCode = "33";
        break;
      case "NL":
        regionCode = "31";
        break;
      case "PL":
        regionCode = "48";
        break;
      case "DK":
        regionCode = "45";
        break;
      case "BE":
        regionCode = "32";
        break;
      case "LU":
        regionCode = "352";
        break;
      case "CZ":
        regionCode = "420";
        break;
      case "US":
        regionCode = "1";
        break;
    }
  }

  String getNumber() {
    return number;
  }

  String normalize() {
    if (number.length > 2) {
      if (number[0] == "0" && number[1] == "0") {
        //print("replacing 00 with +");
        number = number.substring(2, number.length);
        number = "+" + number;
      } else if (number[0] == "0") {
        //print("replacing 0 with +<region_code>");
        number = number.substring(1, number.length);
        number = "+" + regionCode + number;
      } else if (number[0] == "+") {
        //print("number already in right format");
      } else {
        //print("adding prefix to number");
        number = "+" + regionCode + number;
      }
    }
    return number;
  }
}
