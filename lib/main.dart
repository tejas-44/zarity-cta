import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zarity_task/pages/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: HomePage(),),
      // floatingActionButton: FloatingActionButton(
      //
      //   onPressed: (){},
      //   child: Container(
      //     child: Row(
      //       children: [
      //         Text('Sort'),
      //         Text('Status')
      //       ],
      //     ),
      //   ),
      // ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {runApp(MyApp());}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(appBar: AppBar(
//           title: Text("Flutter GridView Demo"),
//         ),
//             body: GridView.count(
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 4.0,
//                 mainAxisSpacing: 8.0,
//                 children: List.generate(choices.length, (index) {
//                   return Center(
//                     child: SelectCard(choice: choices[index]),
//                   );
//                 }
//                 )
//             )
//         )
//     );
//   }
// }

// class Choice {
//   const Choice({required this.title, required this.icon});
//   final String title;
//   final IconData icon;
// }
//
// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'Home', icon: Icons.home),
//   const Choice(title: 'Contact', icon: Icons.contacts),
//   const Choice(title: 'Map', icon: Icons.map),
//   const Choice(title: 'Phone', icon: Icons.phone),
//   const Choice(title: 'Camera', icon: Icons.camera_alt),
//   const Choice(title: 'Setting', icon: Icons.settings),
//   const Choice(title: 'Album', icon: Icons.photo_album),
//   const Choice(title: 'WiFi', icon: Icons.wifi),
// ];
//
// class SelectCard extends StatelessWidget {
//   const SelectCard({ required this.choice});
//   final Choice choice;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Card(
//         color: Colors.orange,
//         child: Center(child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Expanded(child: Icon(choice.icon, size:50.0,)),
//               Text(choice.title, ),
//             ]
//         ),
//         )
//     );
//   }
// }