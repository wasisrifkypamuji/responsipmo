import 'package:flutter/material.dart';
import 'package:responsi/inputdata.dart';
import 'package:responsi/tampildata.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Myhomepage(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue, foregroundColor: Colors.white)));
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

int _currentindex = 0;

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis 1 WASIS RIFKY PAMUJI - 22SA11A236"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("NAMA: WASIS"),
            Text("NIM : 22SA11A236"),
            Text("KELAS : IF 22 F"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
          panggilhalaman(value);
        },
        currentIndex: _currentindex,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "mahasiswa"),
          BottomNavigationBarItem(icon: Icon(Icons.score), label: "inputdata"),
        ],
      ),
    );
  }

  void panggilhalaman(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => tampildata(),
        ),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => datamhs(),
        ),
      );
    }
  }
}
