import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/theme.dart';

class CategoryCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;
  const CategoryCard({super.key, required this.iconPath, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.accent.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconPath, colorFilter: ColorFilter.mode(AppTheme.primary, BlendMode.srcIn)),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}