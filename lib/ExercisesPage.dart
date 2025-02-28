import 'package:flutter/material.dart';
import 'ScorePage.dart'; // Import de la page ScorePage

class ExercisesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Key words and mind maps',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xffadceff),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                      'Text for Extracting a Mind Map',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0F469A)),
                    ),
                    SizedBox(height: 10),

                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 16, color: Colors.black, height: 1.5),
                        children: [
                          TextSpan(
                            text: 'Learning ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' relies on ',
                          ),
                          TextSpan(
                            text: ' effective methods ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' to memorize and structure ',
                          ),
                          TextSpan(
                            text: 'key information',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '. A ',
                          ),
                          TextSpan(
                            text: ' clear organization ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' helps to ',
                          ),
                          TextSpan(
                            text: ' prioritize ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' the ',
                          ),
                          TextSpan(
                            text: 'main ideas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' and their ',
                          ),
                          TextSpan(
                            text: 'secondary details',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '. Through ',
                          ),
                          TextSpan(
                            text: 'mind maps',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ', it becomes possible to visualize the ',
                          ),
                          TextSpan(
                            text: 'logical connections',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' between different concepts. These tools promote ',
                          ),
                          TextSpan(
                            text: 'quick revision',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' and enhance ',
                          ),
                          TextSpan(
                            text: 'overall comprehension',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Organize the keywords in the following mind map:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0F469A)),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Image.network(
                        'https://media.istockphoto.com/id/1368144379/vector/blank-block-scheme-mind-map-frame.jpg?s=612x612&w=0&k=20&c=X9or95S6f90Dg-hX6aVuFQJ3TzWVc1OaH_C5DWNpmAo=',
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Image.network(
                        'https://i.imgur.com/fcRTsC7.png',
                        width: 250,
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Container(
                        width: 218, // Largeur fixe pour les boutons
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Color(0xff0F469A), // Fond bleu
                          borderRadius:
                              BorderRadius.circular(10), // Bords arrondis
                        ),
                        child: ListTile(
                          title: Center(
                            child: Text(
                              'View the Score',
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
                              MaterialPageRoute(
                                  builder: (context) => ScorePage()),
                            );
                          },
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
