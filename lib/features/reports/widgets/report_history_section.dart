import 'package:flutter/material.dart';

import 'report_list_item.dart';

class ReportHistorySection extends StatelessWidget {
  const ReportHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Reports', style: Theme.of(context).textTheme.titleLarge),

        const SizedBox(height: 12),

        const ReportListItem(
          title: 'Complete Blood Count',
          provider: 'LifeLabs',
          date: 'August 14, 2026',
        ),

        const SizedBox(height: 12),

        const ReportListItem(
          title: 'Metabolic Panel',
          provider: 'LifeLabs',
          date: 'June 2, 2026',
        ),

        const SizedBox(height: 12),

        const ReportListItem(
          title: 'Blood Work',
          provider: 'LifeLabs',
          date: 'March 19, 2026',
        ),
      ],
    );
  }
}
