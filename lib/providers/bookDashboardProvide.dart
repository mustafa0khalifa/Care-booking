import 'package:flutter/cupertino.dart';

class BookDashboardProvide extends ChangeNotifier {
  static bool clicedPreviousBooking = false;
  static bool clicedCurrentBooking = false;
  static bool clicedPendingBooking = false;

  static bool clicedBrows = false;
  static bool clicedPost = false;
  static bool clicedFavorite = false;
  static bool clicedNotification = false;

  void ClicedNotification() {
    if (!clicedNotification) {
      setAllFalse();

      clicedNotification = !clicedNotification;
    } else {
      clicedNotification = !clicedNotification;
    }

    notifyListeners();
  }

  void ClicedFavorite() {
    if (!clicedFavorite) {
      setAllFalse();

      clicedFavorite = !clicedFavorite;
    } else {
      clicedFavorite = !clicedFavorite;
    }

    notifyListeners();
  }

  void ClicedPost() {
    if (!clicedPost) {
      setAllFalse();

      clicedPost = !clicedPost;
    } else {
      clicedPost = !clicedPost;
    }

    notifyListeners();
  }

  void ClicedBrows() {
    if (!clicedBrows) {
      setAllFalse();

      clicedBrows = !clicedBrows;
    } else {
      clicedBrows = !clicedBrows;
    }

    notifyListeners();
  }

  void ClicedPndingBooking() {
    if (!clicedPendingBooking) {
      setAllFalse();

      clicedPendingBooking = !clicedPendingBooking;
    } else {
      clicedPendingBooking = !clicedPendingBooking;
    }

    notifyListeners();
  }

  void ClicedPreviousBooking() {
    if (!clicedPreviousBooking) {
      setAllFalse();

      clicedPreviousBooking = !clicedPreviousBooking;
    } else {
      clicedPreviousBooking = !clicedPreviousBooking;
    }

    notifyListeners();
  }

  void ClicedCurrentBooking() {
    if (!clicedCurrentBooking) {
      setAllFalse();
      clicedCurrentBooking = !clicedCurrentBooking;
    } else {
      clicedCurrentBooking = !clicedCurrentBooking;
    }

    notifyListeners();
  }

  void setAllFalse() {
    clicedPreviousBooking = false;
    clicedCurrentBooking = false;
    clicedPendingBooking = false;
    clicedBrows = false;
    clicedPost = false;
    clicedFavorite = false;
    clicedNotification = false;
  }
}
