import 'package:stacked/stacked.dart';

///
class MainViewModel extends IndexTrackingViewModel {
  /// To move to the first index when the back button is press on any other index
  Future<bool> onWillPop(int currentIndex) async {
    if (currentIndex != 0) {
      setIndex(0);
      return false;
    }
    return true;
  }
}
