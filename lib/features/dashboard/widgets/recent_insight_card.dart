import 'package:flutter/material.dart';

class RecentInsightCard extends StatelessWidget {
  const RecentInsightCard({super.key});

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
                    Icons.auto_awesome_outlined,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Recent Insight',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              'LDL Cholesterol',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 8),

            Text(
              'Your LDL cholesterol decreased compared with your previous laboratory report.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 16),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('See More'),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward, size: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
