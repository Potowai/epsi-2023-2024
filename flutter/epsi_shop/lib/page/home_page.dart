import 'package:epsi_shop/bo/cart.dart';
import 'package:epsi_shop/page/article_page_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../bo/articles.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initialize your items list here
  List<Articles> items = [
    Articles(
      nom: 'Pomme',
      description: 'Provient de France',
      image: 'https://www.fruits-legumes.org/fruits-legumes-images/pomme.jpg',
      prix: '1',
      categorie: 'Fruit',
    ),
    Articles(
      nom: 'Poire',
      description: 'Provient de France',
      image: 'https://www.fruits-legumes.org/fruits-legumes-images/poire.jpg',
      prix: '1',
      categorie: 'Fruit',
    ),
    Articles(
      nom: 'Banane',
      description: 'Provient de France',
      image: 'https://www.fruits-legumes.org/fruits-legumes-images/banane.jpg',
      prix: '1',
      categorie: 'Fruit',
    ),
    Articles(
      nom: 'Orange',
      description: 'Provient de France',
      image: 'https://www.fruits-legumes.org/fruits-legumes-images/orange.jpg',
      prix: '1',
      categorie: 'Fruit',
    ),
    Articles(
      nom: 'Kiwi',
      description: 'Provient de France',
      image: 'https://www.fruits-legumes.org/fruits-legumes-images/kiwi.jpg',
      prix: '1',
      categorie: 'Fruit',
    ),
    Articles(
      nom: 'Fraise',
      description: 'Provient de France',
      image: 'https://www.fruits-legumes.org/fruits-legumes-images/fraise.jpg',
      prix: '1',
      categorie: 'Fruit',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Epsi Shop - Home Page'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Badge(
              label: Text('${context.watch<CartProvider>().items.length}'),
              child: const Icon(Icons.shopping_cart),
            ),
            onPressed: () {
              GoRouter.of(context).go('/cart');
            },
          ),
        ],
      ),
      body: ArticleItem(
        items: items,
      ),
    );
  }
}
