import 'package:epsi_shop/bo/articles.dart';
import 'package:epsi_shop/bo/cart.dart';
import 'package:epsi_shop/page/article_page_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  final List<Articles> items;

  const CartPage({super.key, required this.items});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Initialize your items list here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Epsi Shop'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            alignment: Alignment.centerLeft,
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go('/'),
          ),
        ],
      ),
      body: context.read<CartProvider>().items.isEmpty
          ? const EmptyCart()
          : ArticleItem(items: context.read<CartProvider>().items),
    );
  }
}

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No items in cart :/'),
    );
  }
}

class Cart extends StatefulWidget {
  final List<Articles> items;

  const Cart({super.key, required this.items});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return ArticleItem(items: widget.items);
  }
}
