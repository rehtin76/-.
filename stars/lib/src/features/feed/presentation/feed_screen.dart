import 'package:flutter/material.dart';
import 'package:stars/src/features/feed/presentation/widgets/post_widget.dart';
import 'package:stars/l10n/app_localizations.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return PostWidget(
            username: 'talent_$index',
            isVideo: index % 2 == 0,
          );
        },
      ),
    );
  }
}