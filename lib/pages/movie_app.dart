import 'package:flutter/material.dart';

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF1B2C3B),
        title: Text("Movie App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white,),
            onPressed: () {},
          )
        ],
      ),
      //Creating the Chip list
      body:Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("All",style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Action",style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Adventure",style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text("Comedie",style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Top Filmes",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0,),
            Container(
              width:double.infinity,
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MovieCard("JOKER", "8.5/10","assets/images/joker.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MovieCard("Avengers", "8.5/10","assets/images/avengers.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MovieCard("Terminator", "8.5/10","assets/images/terminator.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Recomendado para Você",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0,),
            Container(
              width:double.infinity,
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MovieCard("JOKER", "7.5/10","assets/images/joker.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MovieCard("Interstellar", "9.5/10","assets/images/interstellar.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: MovieCard("Terminator", "8.5/10","assets/images/terminator.jpg"),
                  ),
                  SizedBox(height: 22.0,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MovieCard(String movieName,String rate,String imgPath){
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child:Image.asset(imgPath,fit: BoxFit.fill,width: 130.0,height: 160.0,),
          ),
          SizedBox(height: 5.0,),
          Text(movieName,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26.0
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height:5.0),
          Text(rate,style: TextStyle(
              color: Colors.white,
              fontSize: 18.0
          ),),
        ],
      ),
    );
  }
}