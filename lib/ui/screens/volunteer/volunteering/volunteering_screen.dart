import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/volunteer/volunteering/volunteer_view_model.dart';
import 'package:furry_care/ui/custom_widgets/earned_points_card.dart';
import 'package:furry_care/ui/custom_widgets/volunteer_card.dart';
import 'package:provider/provider.dart';

class VolunteeringScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VolunteerViewModel(),
      child: Consumer<VolunteerViewModel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EarnedPointsCard(),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'Upcoming volunteering opportunities',
                    style: style14,
                  ),
                  SizedBox(height: 16.h),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: model.volunteer.length,
                      itemBuilder: (BuildContext context, int index) {
                        final volunteer = model.volunteer[index];
                        return VolunteerCard(volunteer: volunteer);
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                            height: 16,
                          )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
