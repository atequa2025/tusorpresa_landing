import 'package:flutter/material.dart';
import '../widgets/cta_button.dart';
import '../core/theme.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppTheme.primary.withOpacity(0.2), AppTheme.accent.withOpacity(0.4)],
        ),
      ),
      child: Column(
        children: [
          const Text('¿Quieres sorprender hoy?', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          CtaButton(label: 'Haz tu pedido antes de las 14:00', onPressed: () => print('Ir a pagos')),
        ],
      ),
    );
  }
}