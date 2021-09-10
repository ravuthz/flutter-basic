import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App 1'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child: ListView(
        children: [
          Card(
            child: Center(
              child: Text('Welcome to the flutter world',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    wordSpacing: 2.0,
                    color: Colors.red[700],
                    fontFamily: 'Glory',
                  )),
            ),
          ),
          const Card(
            child:
                Image(image: AssetImage('assets/slide1.jpg'), fit: BoxFit.fill),
          ),
          const Card(
            child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1631019553258-043d88ef767b'),
                fit: BoxFit.fill),
          ),
          Card(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg'),
          ),
          Card(
            child: Image.asset('assets/slide2.jpg', fit: BoxFit.fill),
          ),
          Card(
            child: Image.asset('assets/slide3.jpg', fit: BoxFit.fill),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Text(
          'Click',
          style: TextStyle(
            color: Colors.red[700],
          ),
        ),
        onPressed: () => {},
      ),
    );
  }
}
