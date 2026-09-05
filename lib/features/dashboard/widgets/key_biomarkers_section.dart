import 'package:flutter/material.dart';

import 'biomarker_summary_card.dart';

class KeyBiomarkersSection extends StatelessWidget {
  const KeyBiomarkersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Key Biomarkers', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),

        const BiomarkerSummaryCard(
          name: 'LDL Cholesterol',
          value: '2.8',
          unit: 'mmol/L',
          change: '↓ 0.3 from previous report',
          status: 'Within reference range',
          statusColor: Color(0xFF16A34A),
        ),

        const SizedBox(height: 12),

        const BiomarkerSummaryCard(
          name: 'HDL Cholesterol',
          value: '1.4',
          unit: 'mmol/L',
          change: '↑ 0.1 from previous report',
          status: 'Within reference range',
          statusColor: Color(0xFF16A34A),
        ),

        const SizedBox(height: 12),

        const BiomarkerSummaryCard(
          name: 'HbA1c',
          value: '5.4',
          unit: '%',
          change: '→ No significant change',
          status: 'Within reference range',
          statusColor: Color(0xFF16A34A),
        ),
      ],
    );
  }
}
