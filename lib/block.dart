import "package:flutter/material.dart";

class Block extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;
  final int number;

  const Block({
    super.key,
    required this.title,
    required this.imagePath,
    required this.color,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 50,
          ),
          const SizedBox(height: 10),
          Text(
            '$number',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
