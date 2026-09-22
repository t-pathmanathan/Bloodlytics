import 'package:flutter/material.dart';

class UploadReportCard extends StatelessWidget {
  const UploadReportCard({super.key});

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
                    Icons.upload_file_outlined,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Upload Blood Report',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Text(
              'Upload a PDF of your laboratory results to extract '
              'and track your biomarkers over time.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  // Upload functionality will be added later.
                },
                icon: const Icon(Icons.add),
                label: const Text('Upload Report'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
