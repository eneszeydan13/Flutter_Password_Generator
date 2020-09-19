import 'dart:math';

class Website {
  String password;
  final String logoUrl;
  final String siteName;
  final String allowedChars;
  final int pwlength;

  Website(
      {this.siteName,
      this.allowedChars,
      this.pwlength,
      this.logoUrl,
      this.password});
}

String generatePassword(String allowedChars, int pwlength) {
  String password = '';
  String chars = allowedChars;
  for (int i = 0; i < pwlength; i++) {
    Random rnd = new Random();
    int max = chars.length;
    int index = rnd.nextInt(max);
    password += allowedChars[index];
  }
  return password;
}
