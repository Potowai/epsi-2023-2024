import 'package:flutter/material.dart';
import 'package:epsi_shop/bo/articles.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';
import 'package:epsi_shop/bo/cart.dart';

class ArticleItem extends StatefulWidget {
  final List<Articles> items;

  const ArticleItem({super.key, required this.items});

  @override
  State<ArticleItem> createState() => _ArticleItemState();
}

class _ArticleItemState extends State<ArticleItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, cart, child) {
      bool isHomePage = GoRouterState.of(context).name == 'home';
      List<Articles> displayItems = isHomePage ? widget.items : cart.items;

      return ListView.builder(
        itemCount: displayItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(
                displayItems[index].image,
                width: 50,
                height: 50,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return const Text('Failed to load image');
                },
              ),
              title: Text(displayItems[index].nom),
              subtitle: Text(
                "${displayItems[index].description} ${displayItems[index].prix}€",
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: isHomePage
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Ajouter au panier'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            cart.add(displayItems[index]);
                          },
                        ),
                      ],
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${displayItems[index].prix}€'),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            cart.remove(displayItems[index]);
                          },
                        ),
                      ],
                    ),
            ),
          );
        },
      );
    });
  }
}
