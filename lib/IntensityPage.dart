import 'package:flutter/material.dart';
import 'HomePage.dart';

class IntensityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Module: Intensive Training',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffadceff),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Espacement avant le contenu
            // Contenu dans un cadre avec une ombre
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Ligne avec l'icône de horloge et le temps de lecture
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16, color: Colors.black),
                      SizedBox(
                          width: 4), // Espacement entre l'icône et le texte
                      Text(
                        'Reading time: 30 minutes',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  //Text(
                  //'Master the Art of Capturing the Essentials',
                  //style: TextStyle(
                  //fontSize: 18,
                  //  fontWeight: FontWeight.bold,
                  //    color: Color(0xff0F469A)),
                  //),
                  //  SizedBox(height: 10),

                  Text(
                    "Welcome to the Intensive Training module! This section combines a series of interactive exercises designed to help you master essential note-taking techniques. By the end of this module, you'll have the skills to capture, organize, and review information like never before.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/8980/8980157.png',
                      width: 40, // Ajustez la largeur selon vos besoins
                      height: 40, // Ajustez la hauteur selon vos besoins
                    ),
                  ),
                  //////////////////////////////////////////////////////////////////

                  //Titre1
                  Text(
                    'What You’ll Learn :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                  // Contenu avec texte justifié et puces
                  Text(
                    'This module is designed to build your note-taking skills through a series of fun and interactive exercises. You will practice two primary techniques: identifying key words and creating mind maps.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                  ////////////////////////////////////////////////////////////////////////::
                  //ligne diviseur
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey, // Couleur de la ligne
                    thickness: 2, // Épaisseur de la ligne
                  ),
                  SizedBox(height: 10),
                  //Titre2

                  Text(
                    'How It Works: Step-by-Step Guide :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This module consists of multiple exercises designed to challenge and train you in both key word identification and mind mapping techniques. Here’s a quick look at each step:',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),

                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Step 1: Key Word Identification\n ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Practice identifying key words in a text to focus on essential concepts.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Step 2: Mind Map Creation ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Create a mind map to organize and visualize the relationships between key concepts.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Step 3: Combined Exercise: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Apply both techniques together to reinforce your learning and improve your note-taking skills.',
                        ),
                      ],
                    ),
                  ),
                  //////////////////
                  SizedBox(height: 15),
                  Center(
                    child: Image.network(
                      'https://assets.justinmind.com/wp-content/uploads/2018/09/progress-bar-examples-carol-wu.png',
                      width: 800,
                    ),
                  ),
                  SizedBox(height: 15),

                  Text(
                    'How It Works: Step-by-Step Guide :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Each exercise will guide you step-by-step to help you improve your note-taking skills. Here’s a quick preview of the exercises you’ll complete:',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '\t\t• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Key Word Identification: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Highlight key words from a text to focus on essential concepts for better understanding.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '\t\t• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' Mind Mapping: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Create a mind map to visually organize key words and connect ideas.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: '\t\t• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Combined Exercise: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Integrate both techniques to refine your note-taking and retention.',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),
                  Center(
                    child: Container(
                      width: 308, // Largeur fixe pour les boutons
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xff0F469A), // Fond bleu
                        borderRadius:
                            BorderRadius.circular(10), // Bords arrondis
                      ),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            'Start Training',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold, // Texte en blanc
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context); // Ferme la sidebar
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
