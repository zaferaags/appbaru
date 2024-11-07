import 'package:flutter/material.dart';

void main() {
  runApp(conconst st MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.purple[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconst cons.videogame_asset,
                    size: 40,
                    color: Colors.black,
                  ),
                  SizedBox(height: 8),
           const        Icon(
                    Icons.chat_bubble,
                    size: 24,
                    color: Colors.yellow[700],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),

            IconBconst utton(
              icon: Icon(Icons.arrow_forward, size: 30, color: Cconst olors.black),
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Column(
        children: [
          Container(
            color: Colors.purple[100],
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
         const      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 const              children: [
                Icon(Icons.home, color: Colors.red, size: 30),
                Icon(Icons.menu, color: Colors.blue, size: 30),
                Icon(Icons.favorite, color: Colors.red, size: 30),
                Icon(Icons.account_circle, color: Colors.purple, size: 30),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                gridDeleconst gate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 const images per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1, // Square images
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/image${index + 1}.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
