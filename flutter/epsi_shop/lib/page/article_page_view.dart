import 'package:flutter/cupertino.dart';

import '../bo/articles.dart';

class ArticleItem extends StatelessWidget {
  ArticleItem({super.key});

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
