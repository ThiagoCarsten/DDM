import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaPrincipal());
  }
}
class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Column(
            children: [
              Text("Equilibra", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text("O melhor organizador de gastos", style: TextStyle(fontSize: 16)),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person))
             ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Title(color: Colors.black, child: Text("Tabela de gastos principal", style: TextStyle(fontSize: 30)))
                    )
                ],
              )),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Title(color: Colors.black, child: Text("Login", style: TextStyle(fontSize: 30)))
                    )
                ],
              )),
          ],
        ),
      ),
    );
  }
}
