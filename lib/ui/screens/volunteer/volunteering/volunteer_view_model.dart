import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/volunteer_model.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class VolunteerViewModel extends BaseViewModel {
  List<Volunteer> _volunteer = [];

  List<Volunteer> get volunteer => _volunteer;

  VolunteerViewModel() {
    fetchVolunteer();
  }

  void fetchVolunteer() {
    _volunteer = [
      Volunteer(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Volunteer(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Volunteer(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Volunteer(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Volunteer(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
    ];

    notifyListeners();
  }
}
