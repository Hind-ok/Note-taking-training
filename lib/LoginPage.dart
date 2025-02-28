import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond de la page en blanc
      appBar: AppBar(
        backgroundColor: Colors.white, // Fond de l'AppBar en blanc
        elevation: 0, // Supprime l'ombre de l'AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Icône de retour
          onPressed: () {
            Navigator.pop(context); // Retour à la page précédente
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Section "Log In." avec fond bleu et BorderRadius sur tous les côtés
              Container(
                width: double.infinity, // Prend toute la largeur
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF3B82F6), // Fond bleu
                  borderRadius: BorderRadius.circular(
                      20), // Coins arrondis sur tous les côtés
                ),
                child: const Column(
                  children: [
                    // Titre "Log In."
                    Text(
                      "Log In.",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Texte en blanc
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Logo NOTETRAINER
              Image.network(
                'https://i.pinimg.com/736x/58/47/d6/5847d68d832b3b7b723a74832521e20c.jpg',
                width: 120, // Ajustez la taille selon vos besoins
              ),
              const SizedBox(height: 20),

              // Champ "Username"
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              const SizedBox(height: 20),

              // Champ "Password"
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Internet & characters',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              const SizedBox(height: 20),

              // Texte "Immethome"
              const Text(
                "Immethome",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),

              // Texte "Royal Passover?"
              const Text(
                "Royal Passover?",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

              // Bouton "Login"
              SizedBox(
                width: double.infinity, // Bouton de largeur maximale
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B82F6), // Couleur bleue
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    // Action pour se connecter
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Texte "Don't have an account? Sign Up"
              TextButton(
                onPressed: () {
                  // Navigue vers la page SignupPage
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF3B82F6), // Couleur bleue
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
