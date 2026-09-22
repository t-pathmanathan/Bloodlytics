import 'package:flutter/material.dart';

import '../widgets/upload_report_card.dart';
import '../widgets/report_history_section.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reports')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upload and manage your blood work',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 28),

              const UploadReportCard(),

              const SizedBox(height: 28),

              const ReportHistorySection(),
            ],
          ),
        ),
      ),
    );
  }
}
