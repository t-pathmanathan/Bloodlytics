import 'package:flutter/material.dart';

class LatestReportCard extends StatelessWidget {
  const LatestReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.description_outlined,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Latest Lab Report',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              'August 28, 2026',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 4),

            Text(
              '24 biomarkers analyzed',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('View Report'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
