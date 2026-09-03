import 'package:flutter/material.dart';

import '../widgets/greetings_header.dart';
import '../widgets/latest_report_card.dart';
import '../widgets/health_summary_card.dart';
import '../widgets/key_biomarkers_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                GreetingHeader(),
                SizedBox(height: 24),

                LatestReportCard(),
                SizedBox(height: 24),

                HealthSummaryCard(),
                SizedBox(height: 24),

                KeyBiomarkersSection(),
                SizedBox(height: 24),

                // RecentInsightCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
