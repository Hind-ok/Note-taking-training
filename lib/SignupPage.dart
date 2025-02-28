import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
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
              // Section "Sign Up" avec fond bleu et BorderRadius sur tous les côtés
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
                    // Titre "Sign Up"
                    Text(
                      "Sign Up",
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

              // Logo NOTETRAINER en dessous de la section "Sign Up"
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

              // Champ "E-mail"
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'example@gmail.com',
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
                  hintText: 'at least 8 characters',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              const SizedBox(height: 20),

              // Case à cocher "I agree with Terms and Privacy"
              Row(
                children: [
                  Checkbox(
                    value: true, // Valeur par défaut
                    onChanged: (bool? value) {
                      // Gérer l'état de la case à cocher
                    },
                  ),
                  const Text(
                    "I agree with Terms and Privacy",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Bouton "Sign Up"
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
                    // Navigue vers la page LoginPage
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Texte "Last Monday the automatic Sign" en bas avec "Sign" en bleu
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(text: "Last Monday the automatic "),
                    TextSpan(
                      text: "Sign",
                      style: TextStyle(
                        color: Color(0xFF3B82F6), // "Sign" en bleu
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
