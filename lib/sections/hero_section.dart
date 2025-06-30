import 'package:flutter/material.dart';
import '../widgets/cta_button.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onCatalog;
  final VoidCallback onBuildGift;
  const HeroSection({super.key, required this.onCatalog, required this.onBuildGift});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Image.asset('assets/images/hero.jpg', width: double.infinity, fit: BoxFit.cover, height: 500),
        Positioned(
          left: 48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sorprende a quien más quieres,\nhoy mismo ❤️',
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 12),
              const Text('Entregas en el mismo día | Personalización única | Paga en línea fácil'),
              const SizedBox(height: 24),
              Row(children: [
                CtaButton(label: 'Ver Catálogo', onPressed: onCatalog),
                const SizedBox(width: 16),
                CtaButton(label: 'Arma tu regalo', onPressed: onBuildGift),
              ])
            ],
          ),
        )
      ],
    );
  }
}