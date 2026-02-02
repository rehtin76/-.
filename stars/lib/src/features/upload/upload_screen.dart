import 'package:flutter/material.dart';
import 'package:stars/l10n/app_localizations.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.upload)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Logic to upload photo
              },
              icon: const Icon(Icons.photo),
              label: Text(l10n.uploadPhoto),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Logic to upload video
                // Check duration <= 5 mins
              },
              icon: const Icon(Icons.videocam),
              label: Text(l10n.uploadVideo),
            ),
            const SizedBox(height: 10),
            Text(l10n.videoLimit, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
