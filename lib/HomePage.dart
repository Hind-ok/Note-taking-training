import 'package:flutter/material.dart';
import 'ArticlePage.dart'; // Import de la page SearchPage
import 'ScorePage.dart'; // Import de la page ScorePage
import 'AboutPage.dart'; // Import de la page AboutPage
import 'WelcomePage.dart'; // Import de la page WelcomePage

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Sidebar (Drawer) à gauche
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // En-tête de la sidebar
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Fond bleu pour l'en-tête
              ),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Widget de recherche
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Boutons centrés dans le menu
            Center(
              child: Column(
                children: [
                  // Bouton pour naviguer vers HomePage
                  Container(
                    width: 200, // Largeur fixe pour les boutons
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue, // Fond bleu
                      borderRadius: BorderRadius.circular(10), // Bords arrondis
                    ),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Center(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white, // Texte en blanc
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Ferme la sidebar
                        // Pas besoin de navigation car on est déjà sur HomePage
                      },
                    ),
                  ),
                  // Bouton pour naviguer vers ScorePage
                  Container(
                    width: 200, // Largeur fixe pour les boutons
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue, // Fond bleu
                      borderRadius: BorderRadius.circular(10), // Bords arrondis
                    ),
                    child: ListTile(
                      leading: Icon(Icons.score, color: Colors.white),
                      title: Center(
                        child: Text(
                          'Score',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white, // Texte en blanc
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Ferme la sidebar
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScorePage()),
                        );
                      },
                    ),
                  ),
                  // Bouton pour naviguer vers AboutPage
                  Container(
                    width: 200, // Largeur fixe pour les boutons
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue, // Fond bleu
                      borderRadius: BorderRadius.circular(10), // Bords arrondis
                    ),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white),
                      title: Center(
                        child: Text(
                          'About Us',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white, // Texte en blanc
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Ferme la sidebar
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Espace pour pousser le bouton "Disconnect" vers le bas
            Spacer(),
            // Bouton de déconnexion en bas de la sidebar
            Center(
              child: Container(
                width: 200, // Largeur fixe pour le bouton
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue, // Fond bleu
                  borderRadius: BorderRadius.circular(10), // Bords arrondis
                ),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Center(
                    child: Text(
                      'Disconnect',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white, // Texte en blanc
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context); // Ferme la sidebar
                    // Navigation vers WelcomePage
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // En-tête personnalisé avec icône de personne à gauche et icône de score à droite
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            color: Color(0xffffffff), // Fond blanc pour l'en-tête
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icône de personne à gauche
                Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Icon(Icons.person, color: Color(0xff0c0c0c)),
                      onPressed: () {
                        // Ouvre la sidebar (Drawer) à gauche
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
                // Texte "Note Trainer Guide" au centre
                Text(
                  "Note Trainer Guide",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0a0a0a), // Texte en noir
                  ),
                ),
                // Icône de score à droite
                IconButton(
                  icon: Icon(
                    Icons.score,
                    color: Color(0xff0066ff),
                  ),
                  onPressed: () {
                    // Navigation vers ScorePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScorePage()),
                    );
                  },
                ),
              ],
            ),
          ),

          // Image entre l'en-tête et "Categorie"
          Center(
            child: Image.network(
              'https://i.imgur.com/XHqTkBU.png', // URL de l'image
              fit: BoxFit.cover,
              height: 145,
              width: 330, // Hauteur réduite de l'image
            ),
          ),

          // Titre "Categorie"
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'Categorie',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Texte en noir
              ),
            ),
          ),

          // Quatre icônes alignées horizontalement
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Icône 1 : Keywords & Maps
                Column(
                  children: [
                    Icon(
                      Icons.map, // Icône de carte
                      size: 30, // Taille réduite à 30
                      color: Color(0xff0066ff), // Bleu
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Keywords ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0066ff), // Bleu
                      ),
                    ),
                  ],
                ),
                // Icône 2 : Speed & Retention
                Column(
                  children: [
                    Icon(
                      Icons.speed, // Icône de vitesse
                      size: 30, // Taille réduite à 30
                      color: Color(0xffbf4040), // Vert
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Speed ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffbf4040), // Vert
                      ),
                    ),
                  ],
                ),
                // Icône 3 : Items
                Column(
                  children: [
                    Icon(
                      Icons.list, // Icône de liste
                      size: 30, // Taille réduite à 30
                      color: Color(0xff3bd972), // Orange
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Items',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3bd972), // Orange
                      ),
                    ),
                  ],
                ),
                // Icône 4 : Video Learning
                Column(
                  children: [
                    Icon(
                      Icons.video_library, // Icône de vidéo
                      size: 30, // Taille réduite à 30
                      color: Color(0xffa283e8), // Violet
                    ),
                    SizedBox(height: 5),
                    Text(
                      ' Video ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffa283e8), // Violet
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Titre "Recent Activity"
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Texte en noir
              ),
            ),
          ),

          // Liste des options
          Expanded(
            child: ListView(
              children: [
                // Article: The Basics of Note Taking
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Marge autour du cadre
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur de fond
                    borderRadius: BorderRadius.circular(12), // Coins arrondis
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 2, // Étendue de l'ombre
                        blurRadius: 5, // Rayon de flou
                        offset: Offset(0, 3), // Déplacement de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://i.pinimg.com/736x/8e/3c/2e/8e3c2eec9dc8c3701a73f4a4c724ff73.jpg', // Icône personnalisée
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      'Article: The Basics of Note Taking',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Texte en noir
                      ),
                    ),
                    onTap: () {
                      // Navigation vers SearchPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ArticlePage()),
                      );
                    },
                  ),
                ),

                // Video: Note Taking Techniques
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Marge autour du cadre
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur de fond
                    borderRadius: BorderRadius.circular(12), // Coins arrondis
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 2, // Étendue de l'ombre
                        blurRadius: 5, // Rayon de flou
                        offset: Offset(0, 3), // Déplacement de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://i.pinimg.com/736x/dc/4a/fb/dc4afb4ba9a6a4bf3142e6ed3f970e74.jpg', // Icône personnalisée
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      'Video: Note Taking Techniques',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Texte en noir
                      ),
                    ),
                    onTap: () {
                      // Navigation vers la page des techniques
                      Navigator.pushNamed(context, '/techniques');
                    },
                  ),
                ),

                // Exercise: Speed ​​and Synthesis
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Marge autour du cadre
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur de fond
                    borderRadius: BorderRadius.circular(12), // Coins arrondis
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 2, // Étendue de l'ombre
                        blurRadius: 5, // Rayon de flou
                        offset: Offset(0, 3), // Déplacement de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://i.pinimg.com/736x/0c/f4/f4/0cf4f4be3d018382f36a6d6ed3ec2309.jpg', // Icône personnalisée
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      'Exercise: Speed ​​and Synthesis',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Texte en noir
                      ),
                    ),
                    onTap: () {
                      // Navigation vers la page des vidéos
                      Navigator.pushNamed(context, '/videos');
                    },
                  ),
                ),

                // Module: Intensive Training

                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Marge autour du cadre
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur de fond
                    borderRadius: BorderRadius.circular(12), // Coins arrondis
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 2, // Étendue de l'ombre
                        blurRadius: 5, // Rayon de flou
                        offset: Offset(0, 3), // Déplacement de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://i.pinimg.com/736x/0a/b4/9c/0ab49cf9b37056427faa019dd2c104d7.jpg', // Icône personnalisée
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      'Module: Intensive Training',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Texte en noir
                      ),
                    ),
                    onTap: () {
                      // Navigation vers la page d'intensité
                      Navigator.pushNamed(context, '/intensity');
                    },
                  ),
                ),

                // Exercise: Key Words and Mind Maps

                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Marge autour du cadre
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur de fond
                    borderRadius: BorderRadius.circular(12), // Coins arrondis
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 2, // Étendue de l'ombre
                        blurRadius: 5, // Rayon de flou
                        offset: Offset(0, 3), // Déplacement de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'https://i.pinimg.com/736x/73/2a/73/732a73e6ad0697ff29e19de69fbdcecd.jpg', // Icône personnalisée
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      'Exercise: Key Words and Mind Maps',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Texte en noir
                      ),
                    ),
                    onTap: () {
                      // Navigation vers la page des exercices
                      Navigator.pushNamed(context, '/exercises');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
