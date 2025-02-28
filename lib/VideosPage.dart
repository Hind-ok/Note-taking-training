import 'package:flutter/material.dart';

class VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Speed and Thematic Synthesis',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffadceff), // Couleur de l'AppBar
      ),
      body: SingleChildScrollView(
        // Ajout du scroller
        child: Container(
          margin: EdgeInsets.all(16), // Espace autour de tout le contenu
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Color(0xff858585),
                width: 3), // Cadre bleu pour toute la page
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding:
                EdgeInsets.all(16), // Espacement interne pour tout le contenu
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section "Découverte de la méditation"
                Center(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff858585), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _buildSection(
                        Icons.spa, ' Suggested Video:\n Meditation Guide'),
                  ),
                ),
                SizedBox(height: 16),

                // Titre "Accélérez la vidéo!"
                Text(
                  'Speed up the video!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),

                // Sélecteur de vitesse en bas du titre
                _buildSpeedSelector(),
                SizedBox(height: 16),

                // Image avec une taille augmentée
                Center(
                  child: Image.network(
                    'https://i.pinimg.com/736x/9d/46/a9/9d46a94e0d36f8a0470c98b6863d9d3f.jpg',
                    width: 250, // Taille augmentée de l'image
                    height: 180, // Taille augmentée de l'image
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),

                // Contrôles de la vidéo
                _buildVideoControls(),
                SizedBox(height: 16),

                // Section "Prenez vos notes ici!"
                _buildNotesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.black, size: 30), // Couleur des icônes
        SizedBox(width: 16),
        Text(
          text,
          style: TextStyle(
            fontSize: 16, // Réduction de la taille de la police
            color: Colors.black, // Couleur du texte
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildSpeedSelector() {
    return Row(
      children: [
        Text(
          'Speed: ',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black, // Couleur du texte
          ),
        ),
        DropdownButton<String>(
          value: 'Normal',
          icon: Icon(Icons.arrow_drop_down,
              color: Colors.black), // Couleur de l'icône
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black), // Couleur du texte
          onChanged: (String? newValue) {
            // Handle speed change
          },
          items: <String>['Normal', '1.5x', '2x']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildVideoControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.play_arrow,
            color: Colors.black, size: 30), // Couleur des icônes
        SizedBox(width: 16),
        Icon(Icons.pause, color: Colors.black, size: 30), // Couleur des icônes
        SizedBox(width: 16),
        Icon(Icons.volume_up,
            color: Colors.black, size: 30), // Couleur des icônes
        SizedBox(width: 16),
        Text(
          '23:34/30:02', // Temps de la vidéo ajusté
          style: TextStyle(
            fontSize: 16,
            color: Colors.black, // Couleur du texte
          ),
        ),
      ],
    );
  }

  Widget _buildNotesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.edit_note, color: Colors.black, size: 30),
            SizedBox(width: 16),
            Text(
              'Take your notes here!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(8),
          child: TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Write your notes here...',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
