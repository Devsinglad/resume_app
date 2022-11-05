import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProvider extends ChangeNotifier {
  bool isDark = false;

  void toggleTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  // Gmail URL function
  Future<void> launchGmailUrl() async {
    final Uri _url = Uri.parse('https://www.gmail.com');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

//linkedIn Url function
  Future<void> launchLinkedInUrl() async {
    final Uri _url = Uri.parse(
        'https://www.linkedin.com/in/simon-singlad-chuwkwu-915115244/');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  //Github Url function
  Future<void> launchGitUrl() async {
    final Uri _url = Uri.parse('https://www.github.com/devsinglad');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  onlanguage() {
    notifyListeners();
  }
}
