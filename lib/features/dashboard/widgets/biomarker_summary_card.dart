import 'package:flutter/material.dart';

class BiomarkerSummaryCard extends StatelessWidget {
  const BiomarkerSummaryCard({
    super.key,
    required this.name,
    required this.value,
    required this.unit,
    required this.change,
  });

  final String name;
  final String value;
  final String unit;
  final String change;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  value,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 6),
                Text(unit, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            const SizedBox(height: 8),
            Text(change, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('View Trend'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
