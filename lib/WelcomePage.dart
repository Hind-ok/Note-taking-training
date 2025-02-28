import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond de la page en blanc
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo en haut à gauche
            Align(
              alignment: Alignment.topLeft,
              child: Image.network(
                'https://i.pinimg.com/736x/58/47/d6/5847d68d832b3b7b723a74832521e20c.jpg',
                width: 80, // Ajustez la taille selon vos besoins
              ),
            ),

            // Texte "Welcome to your application"
            const Text(
              "Welcome to your\napplication",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            // Illustration au centre (Image depuis un URL) avec une taille réduite
            Image.network(
              'https://i.pinimg.com/474x/23/25/86/232586b636daba66b413d6d14a67320c.jpg',
              width: 200, // Taille réduite
              height: 200, // Taille réduite
              fit: BoxFit.contain,
            ),

            // Boutons en bas
            Column(
              children: [
                // Bouton "Create your account"
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B82F6), // Couleur bleue
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Bouton "To help you"
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200], // Couleur grise claire
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    // Navigue vers la page AboutPage
                    Navigator.pushNamed(context, '/about');
                  },
                  child: const Text(
                    "To help you",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Texte noir pour contraste
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Lien "Already have an account? Login"
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    "Already have an account? Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3B82F6), // Couleur bleue
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
