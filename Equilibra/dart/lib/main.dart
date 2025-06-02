import 'package:flutter/material.dart';

void main() => runApp(TelaPrincipal());

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 130,
            title: Column(
              children: [
                Text("Equilibra", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("O melhor organizador de gastos", style: TextStyle(fontSize: 16)),
              ],
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //tela Principal
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Title(
                        color: Colors.black,
                        child: Text("Tabela de gastos principal", style: TextStyle(fontSize: 25)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        width: 500,
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                TableCell(child: Text("Gasto 1")),
                                TableCell(child: Text("Gasto 2")),
                                TableCell(child: Text("Gasto 3")),
                                TableCell(child: Text("Gasto 4")),
                                TableCell(child: Text("Gasto 5")),
                                TableCell(child: Text("Gasto 6")),
                              ]
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              ),
              //tela de Login
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Title(
                        color: Colors.black,
                        child: Text("LOGIN", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Usuário", style: TextStyle(fontSize: 20)),
                          SizedBox(height: 8),
                          SizedBox(
                            height: 40,
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(labelText: "Insira seu nome de usuário"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text("Senha", style: TextStyle(fontSize: 20)),
                          SizedBox(height: 8),
                          SizedBox(
                            height: 40,
                            width: 300,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(labelText: "Insira sua senha"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: null, child: Text("Enviar"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}