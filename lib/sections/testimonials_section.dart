import 'package:flutter/material.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final testimonials = [
      {'img': 'assets/images/testi_1.jpg', 'text': '“El desayuno llegó calentito y a tiempo”'},
      {'img': 'assets/images/testi_2.jpg', 'text': '“Flores frescas y arreglos hermosos”'},
      {'img': 'assets/images/testi_3.jpg', 'text': '“Regalo corporativo perfecto para mi equipo”'},
      {'img': 'assets/images/testi_4.jpg', 'text': '“Decoración top para mi fiesta”'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: testimonials.length,
              separatorBuilder: (_, __) => const SizedBox(width: 24),
              itemBuilder: (ctx, i) {
                final t = testimonials[i];
                return Column(
                  children: [
                    CircleAvatar(radius: 36, backgroundImage: AssetImage(t['img']!)),
                    const SizedBox(height: 8),
                    SizedBox(width: 140, child: Text(t['text']!, textAlign: TextAlign.center)),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}