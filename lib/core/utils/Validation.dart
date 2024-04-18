
final RegExp numberRegex = RegExp(r'^[0-9]+$');

VaildationInput(String val, int min, int max) {
  
  if (val.length > max) {
    return "Number can't exceed $max digits or char";
  }
  if (val.isEmpty) {
    return "Number can't be empty";
  }
  if (val.length < min) {
    return "Number must be at least $min digits long or char";
  }
}

validateNumber(String val, int min, int max) {
  final RegExp numberRegex = RegExp(r'^[0-9]+$');

  // ignore: unnecessary_null_comparison
  if (!numberRegex.hasMatch(val) || val==null) {
    return "Enter a valid Number";
  }
  if (val.isEmpty) {
    return "Number can't be empty";
  }
  if (val.length < min) {
    return "Number must be at least $min digits long";
  }
  if (val.length > max) {
    return "Number can't exceed $max digits";
  }

}