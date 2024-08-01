import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to previous screen
          },
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/omr.jpeg'),
              ),
              const Text(
                'OMR ABDULLAH',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const Text(
                'Software And AI Engineer',
                style: TextStyle(
                  fontSize: 27.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
              ),
              const Text(
                'Contact Me',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.black,
                margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: const Padding(
                  padding: EdgeInsets.all(7.5),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+20 1025321949',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: const Padding(
                  padding: EdgeInsets.all(11.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'omar.bamusa.888@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
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
