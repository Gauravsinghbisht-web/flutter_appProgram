import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
// ThemeProvider is class named.
// Changenotifier when data changes it makes capable of notifying .
 
 bool islight = false;
 void toogleTheme () { // function to switch theme.
  islight = !islight;
  notifyListeners();   // it tells to flutter UI should rebuild.

 }
}