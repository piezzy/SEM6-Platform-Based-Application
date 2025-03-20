import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 1',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric( horizontal: 25, vertical: 30),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Welcome,", style: TextStyle(
                        color: Color(0xFF7367F0),
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.25)
                    ),
                    Text(
                      "Mohammad Hikam Abdul Karim - 2211102278",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B)
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 20,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
            decoration: BoxDecoration(
              gradient:
              const LinearGradient(colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Status tes Toefl Anda:',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 8),
                Text("LULUS",style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.25
                ),),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Listening\n 80',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Structure\n 80',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Reading\n 90',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            child: Text('Riwayat Test', style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.25
            ),),
          )
        ],),),
    );
  }
}
