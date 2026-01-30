import 'dart:ui';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = [
      'Healthy',
      'Vegan',
      'Carrots',
      'Greens',
      'Wheat',
      'Pescetarian',
      'Mint',
      'Lemongrass',
      'Salad',
      'Water',
    ];

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          constraints: const BoxConstraints.expand(width: 350, height: 450),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Recipe Trends',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: tags.map((tag) {
                        return Chip(
                          label: Text(
                            tag,
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.black.withOpacity(0.4),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
