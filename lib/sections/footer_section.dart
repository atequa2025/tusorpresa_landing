import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('TuSorpresa © 2025 – Todos los derechos reservados', style: TextStyle(fontSize: 14)),
          const SizedBox(height: 8),
          Wrap(spacing: 16, children: [
            TextButton(onPressed: () {}, child: const Text('Políticas de privacidad')),
            TextButton(onPressed: () {}, child: const Text('Términos y condiciones')),
            TextButton(onPressed: () {}, child: const Text('Contacto')),
          ]),
          const SizedBox(height: 16),
          Row(children: [
            Image.asset('assets/images/mercadopago_logo.png', height: 28),
            const SizedBox(width: 12),
            Image.asset('assets/images/pagofacil_logo.png', height: 28),
          ]),
        ],
      ),
    );
  }
}