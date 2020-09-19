import 'websites.dart';

final String defaultText = 'Tap GENERATE to generate a password';
final String upperCaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
final String lowerCaseLetters = 'abcdefghijklmnopqrstuvwxyz';
final String specialCharacters = '!@#%^&*_';
final String numbers =
    '0123456789'; //Characters that will be used spesifically for every website
final String anyCharacter =
    (upperCaseLetters + lowerCaseLetters + specialCharacters + numbers);
final int recommendedPasswordLength =
    15; //Recommended password length for most websites

List<Website> websites = [
  //Array of websites that will be displayed on screen
  new Website(
      password: defaultText,
      siteName: 'Gmail',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/4/4e/Gmail_Icon.png'),
  new Website(
      password: defaultText,
      siteName: 'Facebook',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Facebook_icon.svg/1024px-Facebook_icon.svg.png'),

  new Website(
      password: defaultText,
      siteName: 'PayPal',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://logos-world.net/wp-content/uploads/2020/04/PayPal-Logo.png'),

  new Website(
      password: defaultText,
      siteName: 'Netflix',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://dwglogo.com/wp-content/uploads/2019/02/Netflix_N_logo.png'),

  new Website(
      password: defaultText,
      siteName: 'Amazon',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://1000logos.net/wp-content/uploads/2016/10/Amazon-Logo.png'),
  new Website(
      password: defaultText,
      siteName: 'Twitter',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://marka-logo.com/wp-content/uploads/2020/04/Twitter-Logo.png'),

  new Website(
      password: defaultText,
      siteName: 'Instagram',
      allowedChars: anyCharacter,
      pwlength: recommendedPasswordLength,
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png')
];
