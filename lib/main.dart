import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'sections/hero_section.dart';
import 'sections/category_selector.dart';
import 'sections/best_sellers_section.dart';
import 'sections/testimonials_section.dart';
import 'sections/cta_section.dart';
import 'sections/footer_section.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(children: [
          HeroSection(
            onCatalog: () => _scrollController.animateTo(600, duration: const Duration(milliseconds: 600), curve: Curves.ease),
            onBuildGift: () => print('Construir regalo'),
          ),
          CategorySelector(scrollController: _scrollController),
          const BestSellersSection(),
          const TestimonialsSection(),
          const CtaSection(),
          const FooterSection(),
        ]),
      ),
    );
  }
}

void main() {
  runApp(const TuSorpresaApp());
}

class TuSorpresaApp extends StatelessWidget {
  const TuSorpresaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TuSorpresa – Regalos Online',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}