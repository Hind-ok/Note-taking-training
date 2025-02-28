import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Basics of Note Taking',
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
                  Text(
                    'Master the Art of Capturing the Essentials',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                  ),
                  SizedBox(height: 10),

                  Text(
                    'Effective note-taking is an essential skill, whether for excelling in studies, optimizing time, or retaining important information. However, few people receive proper training on this topic. This article guides you through the basics to excel at note-taking.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                  //////////////////////////////////////////////////////////////////
                  //ligne diviseur
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey, // Couleur de la ligne
                    thickness: 2, // Épaisseur de la ligne
                  ),
                  SizedBox(height: 10),
                  //Titre1
                  Text(
                    '1. Why Is Note-Taking Crucial?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15),
                  // Contenu avec texte justifié et puces
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Note-taking is not just about transcribing words you hear or read. It helps to:\n\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Enhance Memory: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Writing activates parts of your brain that improve retention.\n\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Clarify Ideas: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Structuring what you hear or read improves understanding.\n\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Provide a Quick Reference: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Well-organized notes become a valuable resource for revisions or projects.\n\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Boost Concentration: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Taking notes keeps you engaged in listening or reading.',
                        ),
                      ],
                    ),
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
                    '2. Note-Taking Methods: How to Choose the Right One?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Each method has its benefits and suits different contexts. Here are some popular ones:',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  // Méthode Cornell
                  Text(
                    'a. The Cornell Method',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          text: 'Description: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Divide your page into three sections: main notes, a summary, and a zone for questions or reflections.',
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
                          text: 'Ideal for: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Organizing complex information clearly and effectively.',
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
                          text: 'Advantage: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Encourages active revision by asking questions about your notes.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0),

                  // Image pour la méthode Cornell
                  Center(
                    child: Image.network(
                      'https://printabletree.com/wp-content/uploads/Cornell-Notes-Template-768x994.png',
                      width: 200, // Ajustez la largeur selon vos besoins
                      height: 300, // Ajustez la hauteur selon vos besoins
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 0),

                  // Méthode Bullet Points
                  Text(
                    'b. Bullet Points',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          text: 'Description: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Structure your notes as hierarchical lists with bullets or numbers.',
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
                          text: 'Ideal for: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Quick note-taking during lectures or meetings.',
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
                          text: 'Advantage: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Quick to write and easy to review.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  // Section c. Mind Maps
                  Text(
                    'c. Mind Maps',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Description: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Represent ideas in a diagram with a central topic and branches for each concept.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Ideal for: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Understanding relationships between concepts.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Advantage: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Visual, engaging, and useful for organizing complex ideas.\n',
                        ),
                      ],
                    ),
                  ),
                  // Image pour Mind Maps
                  SizedBox(height: 0),
                  Center(
                    child: Image.network(
                      'https://le-consultant-digital.com/wp-content/uploads/2022/09/Mind-mapping.jpg',
                      width: 300, // Ajustez la largeur selon vos besoins
                      height: 200, // Ajustez la hauteur selon vos besoins
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 0),

                  // Section d. Flowcharts
                  Text(
                    'd. Flowcharts',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Description: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Use arrows and boxes to show relationships between ideas.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Ideal for: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Describing processes or explaining interconnected ideas.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Advantage: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Excellent for technical or scientific subjects.\n',
                        ),
                      ],
                    ),
                  ),
                  // Image pour Flowcharts
                  Center(
                    child: Image.network(
                      'https://cdn-icons-png.freepik.com/512/3696/3696575.png',
                      width: 150, // Ajustez la largeur selon vos besoins
                      height: 150, // Ajustez la hauteur selon vos besoins
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Section 3. Tips to Improve Your Notes
                  Text(
                    '3. Tips to Improve Your Notes :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0F469A)),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'a. Prepare Before Taking Notes',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Read the topic or slides beforehand.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Identify key themes in advance.',
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'b. Use Abbreviations',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'E.g.: "info" for "information," "ex" for "example."\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Create your own shorthand to write faster.',
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'c. Highlight Key Points',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Underline, circle, or use colors to prioritize information.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'For example, use one color for dates and another for definitions.',
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'd. Leave Space for Additions Later',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: Colors.black, height: 1.5),
                      children: [
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'If you miss something, leave blank areas to fill in details later.\n',
                        ),
                      ],
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
