import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String imageUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[200],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text("My First App"),
        ),
        body:
            // Network Images with loading and error handling
            Center(
          child: Image.network(
            imageUrl,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return CircularProgressIndicator();
            },
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error, size: 50, color: Colors.red);
            },
          ),
        )

        // Center(
        //   child: Image(
        //     height: 300,
        //     width: 400,
        //     fit: BoxFit.fill,
        //
        //     // Network Image
        //     // image: NetworkImage(
        //     //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        //
        //     // Asset Image
        //     image: AssetImage('images/naruto.jpg'),
        //   ),
        // )
        );
  }
}
