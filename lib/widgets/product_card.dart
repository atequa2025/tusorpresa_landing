import 'package:flutter/material.dart';
import '../core/theme.dart';
import 'cta_button.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final VoidCallback onBuy;
  const ProductCard({super.key, required this.imagePath, required this.title, required this.price, required this.onBuy});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imagePath, height: 160, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(fontSize: 14, color: AppTheme.textDark)),
                const SizedBox(height: 8),
                CtaButton(label: '¡Lo quiero!', onPressed: onBuy)
              ],
            ),
          ),
        ],
      ),
    );
  }
}