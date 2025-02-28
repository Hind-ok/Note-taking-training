import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // Import du package

class TechniquesPage extends StatelessWidget {
  double _rating = 4.0; // Variable pour stocker la note

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Techniques of Note Taking',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffadceff),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titre "Techniques of Note Taking"
            Text(
              'Techniques of Note Taking',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0F469A)),
            ),
            SizedBox(height: 20),

            // Image entre "Techniques of Note Taking" et "Optimize Your Note Taking" avec un triangle au centre
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  'https://i.pinimg.com/736x/6d/73/b3/6d73b336c84698cdbb056c750101ce8e.jpg',
                  fit: BoxFit.cover,
                  height: 200, // Hauteur de l'image
                ),
                Icon(
                  Icons.play_arrow,
                  size: 70,
                  color: Color(0xff2d1277), // Couleur du triangle (play icon)
                ),
              ],
            ),
            SizedBox(height: 20),

            // Titre "Optimize Your Note Taking"
            Text(
              'Optimize Your Note Taking',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0F469A)),
            ),
            SizedBox(height: 10),

            // Paragraphe de texte
            Text(
              "In this video, you'll have some great note-taking techniques that will help you organize your ideas clearly and effectively. It allows you proven essential to structure your notes depending on the type of content, improve your memory, and make your study sessions more efficient. Whether you're a student, a professional or just someone who loves learning, these tips will help you take better notes every day.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),

            // Première image avec titre à droite
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Première image avec triangle
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(12), // Rayon des coins arrondis
                      child: Image.network(
                        'https://i.pinimg.com/736x/04/89/72/048972c27ca78de8ef52c2a1d2d5dc89.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 150, // Hauteur réduite de l'image
                      ),
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 40, // Taille réduite du triangle
                      color:
                          Color(0xff2d1277), // Couleur du triangle (play icon)
                    ),
                  ],
                ),

                SizedBox(width: 10), // Espace réduit entre l'image et le texte
                // Titre "Boost Your Note-Taking Skills"
                Expanded(
                  child: Text(
                    'Boost Your Note-Taking Skills',
                    style: TextStyle(
                      fontSize: 16, // Taille de police ajustée
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Deuxième image avec titre à droite
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Deuxième image avec triangle
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(12), // Rayon des coins arrondis
                      child: Image.network(
                        'https://i.pinimg.com/736x/b9/93/5f/b9935f9055acb3dc840ab9903c127014.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 150, // Hauteur réduite de l'image
                      ),
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 40, // Taille réduite du triangle
                      color:
                          Color(0xff2d1277), // Couleur du triangle (play icon)
                    ),
                  ],
                ),

                SizedBox(width: 10), // Espace réduit entre l'image et le texte
                // Titre "Transform Your Notes: Smart Strategies"
                Expanded(
                  child: Text(
                    'Transform Your Notes: Smart Strategies',
                    style: TextStyle(
                      fontSize: 16, // Taille de police ajustée
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Section d'évaluation interactive
            Text(
              'Rate this section:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),

            // Widget d'évaluation interactif
            Center(
              child: RatingBar.builder(
                initialRating: _rating, // Note initiale
                minRating: 1, // Note minimale
                direction: Axis.horizontal, // Direction horizontale
                allowHalfRating: true, // Permettre les demi-étoiles
                itemCount: 5, // Nombre d'étoiles
                itemSize: 30, // Taille des étoiles
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber, // Couleur des étoiles
                ),
                onRatingUpdate: (rating) {
                  // Mettre à jour la note lorsque l'utilisateur interagit
                  _rating = rating;
                  print("Note actuelle : $_rating");
                },
              ),
            ),
            SizedBox(height: 10),

            // Texte sous les étoiles
          ],
        ),
      ),
    );
  }
}
