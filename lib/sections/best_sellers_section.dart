import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class BestSellersSection extends StatelessWidget {
  const BestSellersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {'img': 'assets/images/prod_desayuno.jpg', 'title': 'Desayuno Sorpresa', 'price': '\$25.900'},
      {'img': 'assets/images/prod_rosas.jpg',     'title': 'Ramo de Rosas',     'price': '\$32.500'},
      {'img': 'assets/images/prod_boxcorp.jpg',   'title': 'Caja Corporativa',  'price': '\$40.000'},
      {'img': 'assets/images/prod_guirnalda.jpg', 'title': 'Guirnalda de Globos', 'price': '\$15.900'},
    ];

    final isMobile = MediaQuery.of(context).size.width < 800;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Más Vendidos', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          isMobile
              ? SizedBox(
            height: 340,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (ctx, i) {
                final p = products[i];
                return SizedBox(width: 260, child: ProductCard(
                  imagePath: p['img']!,
                  title: p['title']!,
                  price: p['price']!,
                  onBuy: () => print('Buy ${p['title']}'),
                ));
              },
            ),
          )
              : GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 3/5,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: products.length,
            itemBuilder: (ctx, i) {
              final p = products[i];
              return ProductCard(
                imagePath: p['img']!,
                title: p['title']!,
                price: p['price']!,
                onBuy: () => print('Buy ${p['title']}'),
              );
            },
          ),
        ],
      ),
    );
  }
}