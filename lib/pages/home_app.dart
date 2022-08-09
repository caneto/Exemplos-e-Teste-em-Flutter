import 'dart:ui';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  HomeApp({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  String _imageBg =
      "https://images.unsplash.com/photo-1561708232-fc2ac7e36676?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80";
  String _userAvatar = "https://randomuser.me/api/portraits/lego/5.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title!),
      ),
      drawerScrimColor: Colors.transparent,
      drawer: Container(
        width: 300,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(180, 250, 250, 250),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(31, 38, 135, 0.4),
                blurRadius: 8.0,
              )
            ],
            border: Border(
                right: BorderSide(
                  color: Colors.white70,
                ))),
        child: Stack(
          children: [
            SizedBox(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.grey.withOpacity(0.0),
                          Colors.white.withOpacity(0.2),
                        ])),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(_userAvatar),
                        radius: 30.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text("Nome Usuário")
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        title: Text("Pagina Inicial"),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text("Pagina de Infos"),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        title: Text("Configuração"),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        title: Text("LogOut"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_imageBg),
              fit: BoxFit.cover,
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
