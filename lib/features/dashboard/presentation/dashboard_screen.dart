import 'package:flutter/material.dart';

import '../widgets/greetings_header.dart';
import '../widgets/latest_report_card.dart';
import '../widgets/health_summary_card.dart';
import '../widgets/key_biomarkers_section.dart';
import '../widgets/recent_insight_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GreetingHeader(),
              const SizedBox(height: 28),

              const LatestReportCard(),
              const SizedBox(height: 28),

              const HealthSummaryCard(),
              const SizedBox(height: 28),

              const KeyBiomarkersSection(),
              const SizedBox(height: 28),

              const RecentInsightCard(),
            ],
          ),
        ),
      ),
    );
  }
}
