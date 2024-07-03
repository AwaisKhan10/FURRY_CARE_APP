import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/volunteer/events/event_view_model.dart';
import 'package:furry_care/ui/custom_widgets/event_card.dart';
import 'package:provider/provider.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EventViewModel(),
      child: Consumer<EventViewModel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upcoming Events',
                    style: style14,
                  ),
                  SizedBox(height: 16.h),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: model.events.length,
                    itemBuilder: (BuildContext context, int index) {
                      final event = model.events[index];
                      return EventCard(event: event);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
