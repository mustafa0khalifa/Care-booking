import 'package:flutter/cupertino.dart';

class ItemFavoriteCareProvider extends ChangeNotifier {
  static bool isFavorite = false;

  void changeIsFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
