import 'package:flutter/material.dart';
import 'HomePage.dart'; // Import de la page HomePage

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Text(
          'Page Score',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffadceff), // Couleur de l'AppBar
        elevation: 0, // Supprime l'ombre de l'AppBar
      ),
      body: Column(
        children: [
          // Section du score avec un cercle
          Expanded(
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xff0F469A), // Fond bleu
                  shape: BoxShape.circle, // Forme circulaire
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Affichage du score "29/30"
                    Text(
                      "29/30",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Texte en blanc
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Texte "Your score"
                    Text(
                      "Your score",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white, // Texte en blanc
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Section des félicitations en bas du cercle
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              children: [
                // Message de félicitations
                Text(
                  "Congratulations",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Texte en noir
                  ),
                ),
                const SizedBox(height: 10),
                // Texte "Check job? You did it."
                Text(
                  "Check job? You did it.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey, // Texte en gris
                  ),
                ),
              ],
            ),
          ),

          // Bouton "Share"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0F469A), // Couleur bleue
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Action pour partager le score
              },
              child: Text(
                "Share",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Texte en blanc
                ),
              ),
            ),
          ),

          // Bouton "Back to Home" en dessous de "Share"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], // Fond gris clair
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Navigation vers HomePage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                "Back to Home",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Texte en noir
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
