import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.menu, color: Colors.black,size: 52.0,),
                      Image.asset("assets/images/image.png",width: 52.0,)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Bem-vindo, \nSelecione uma opção",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Wrap(
                      spacing:20,
                      runSpacing: 20.0,
                      children: <Widget>[
                        SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            //color: Color.fromARGB(255,21, 21, 21),
                            color: Colors.black12,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/images/todo.png",width: 64.0,),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Lista Todo",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "2 Itens",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            //color: Color.fromARGB(255,21, 21, 21),
                            color: Colors.black12,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/images/note.png",width: 64.0,),
                                      SizedBox(height: 10.0,),
                                      Text(
                                        "Notas",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        "12 Itens",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            //color: Color.fromARGB(255,21, 21, 21),
                            color: Colors.black12,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/images/calendar.png",width: 64.0,),
                                      SizedBox(height: 10.0,),
                                      Text(
                                        "Agenda",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        "4 Itens",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            //color: Color.fromARGB(255,21, 21, 21),
                            color: Colors.black12,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/images/settings.png",width: 64.0,),
                                      SizedBox(height: 10.0,),
                                      Text(
                                        "Settings",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        "6 Itens",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
