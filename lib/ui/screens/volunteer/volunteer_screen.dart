import 'package:flutter/material.dart';
import 'package:furry_care/ui/custom_widgets/custom_appbar.dart';
import 'package:furry_care/ui/screens/volunteer/events/event_view_model.dart';
import 'package:furry_care/ui/screens/volunteer/events/events_screen.dart';
import 'package:furry_care/ui/screens/volunteer/volunteering/volunteering_screen.dart';
import 'package:provider/provider.dart';

class VolunteerScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  VolunteerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EventViewModel(),
      child: Consumer<EventViewModel>(
        builder: (context, model, child) => DefaultTabController(
          length: 2,
          child: Scaffold(
            key: _scaffoldkey,
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(70), child: CustomAppbar()),
            body: TabBarView(
              children: [
                VolunteeringScreen(),
                EventsScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
