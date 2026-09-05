import 'package:flutter/material.dart';

class HealthSummaryCard extends StatelessWidget {
  const HealthSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Health Overview', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),

        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest report',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  '24 biomarkers analyzed',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: _SummaryItem(
                        value: '18',
                        label: 'Within Range',
                        icon: Icons.check_circle_outline,
                        color: const Color(0xFF16A34A),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _SummaryItem(
                        value: '4',
                        label: 'Monitor',
                        icon: Icons.warning_amber_outlined,
                        color: const Color(0xFFD97706),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _SummaryItem(
                        value: '2',
                        label: 'Outside Range',
                        icon: Icons.error_outline,
                        color: const Color(0xFFDC2626),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem({
    required this.value,
    required this.label,
    required this.icon,
    required this.color,
  });

  final String value;
  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 22, color: color),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
