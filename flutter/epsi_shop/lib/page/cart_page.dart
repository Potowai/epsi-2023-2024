import 'package:epsi_shop/bo/articles.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Initialize your items list here
  List<Articles> items = [
    Articles(
        nom: 'Article 1',
        description: 'Description de l\'article 1',
        image: 'https://picsum.photos/250?image=9',
        prix: '10',
        categorie: 'categorie 1'),
    Articles(
        nom: 'Article 2',
        description: 'Description de l\'article 2',
        image: 'https://picsum.photos/250?image=9',
        prix: '20',
        categorie: 'categorie 2')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Epsi Shop'),
        backgroundColor: Colors.teal,
      ),
      body: items.isEmpty
          ? const EmptyCart()
          : Cart(
              items: items,
            ),
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
  List<Articles> items = [];

  Cart({super.key, required this.items});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Image.network(
              widget.items[index].image,
              width: 50,
              height: 50,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return const Text('Failed to load image');
              },
            ),
            title: Text(widget.items[index].nom),
            subtitle: Row(
              children: [
                Text(
                  widget.items[index].description +
                      " ${widget.items[index].prix}€",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              // Important to keep row size minimum
              children: [
                Text('${widget.items[index].prix}€'),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      widget.items.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
