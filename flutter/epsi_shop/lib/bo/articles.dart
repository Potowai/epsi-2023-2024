
class Articles {
  String nom;
  String description;
  String image;
  String prix;
  String categorie;

  Articles({required this.nom, required this.description, required this.image, required this.prix, required this.categorie});
}

void main() {
  //Créer une liste d'articles
  List<Articles> articles = [];
  articles.add(Articles(
    nom: 'Article 1',
    description: 'Description de l\'article 1',
    image: 'https://picsum.photos/250?image=9',
    prix: '10',
    categorie: 'categorie 1'
  ));
  articles.add(Articles(
    nom: 'Article 2',
    description: 'Description de l\'article 2',
    image: 'https://picsum.photos/250?image=9',
    prix: '20',
    categorie: 'categorie 2'
  ));
  //print un article avec son nom et son prix
  print('Le nom de l\'article est ${articles[0].nom} et son prix est ${articles[0].prix}');
}