import 'package:furry_care/core/view_model/base_view_model.dart';

class CoursesViewModel extends BaseViewModel {
  bool isExpanded = false;

  onClick() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
