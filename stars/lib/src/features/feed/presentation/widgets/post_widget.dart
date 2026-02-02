import 'package:flutter/material.dart';
import 'package:stars/src/core/theme/app_theme.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String? imageUrl;
  final bool isVideo;

  const PostWidget({
    super.key,
    required this.username,
    this.imageUrl,
    this.isVideo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              const CircleAvatar(radius: 18, backgroundColor: AppTheme.primary),
              const SizedBox(width: 8),
              Text(username, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
              const Spacer(),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),
        // Media
        Container(
          height: 400,
          width: double.infinity,
          color: Colors.grey[900],
          child: Center(
            child: Icon(
              isVideo ? Icons.play_circle_fill : Icons.image,
              size: 64,
              color: Colors.white54,
            ),
          ),
        ),
        // Actions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              const Icon(Icons.favorite_border, size: 28),
              const SizedBox(width: 16),
              const Icon(Icons.chat_bubble_outline, size: 28),
              const SizedBox(width: 16),
              const Icon(Icons.send_outlined, size: 28),
              const Spacer(),
              const Icon(Icons.bookmark_border, size: 28),
            ],
          ),
        ),
        // Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Liked by 1,234 people', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: '$username ', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Showing my latest work! #talent #stars', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
