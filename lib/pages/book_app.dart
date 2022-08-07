import 'package:flutter/material.dart';

class Booksapp extends StatefulWidget {
  @override
  _BooksappState createState() => _BooksappState();
}

class _BooksappState extends State<Booksapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Livraria", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 35),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz, color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Melhor livro para este ano",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30.0
              ),
            ),
            SizedBox(height: 15.0,),
            Text(
              "Esta é uma seleção do livro mais avaliado deste ano, escolha o seu favorito",
              style: TextStyle(
                fontSize: 18.0,
                height: 1.5,
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/non-fiction-business-kindle-book-cover-design-template-2fac9a2b8a04f729d06c809ad50214b6.jpg?ts=1561422624", fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(width: 20.0,),
                Container(
                  height: 200.0,
                  width: 200.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Criação de negócios criativos",
                        style: TextStyle(
                          color:Colors.black87 ,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        "By Jen Brazel",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        "8.5/10",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      FlatButton(
                        onPressed: (){},
                        color: Colors.deepOrange,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Detalhes", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0,),
            Text("Recomendação principal",style: TextStyle(fontSize: 22.0),),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,top: 8.0,bottom: 8.0),
                    child: Container(
                      height: 80.0,
                      width: 150.0,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTwyQeaqZLovu4Hc5hUjTC2u1mK0h85w4jnZkC8kVT76-skY94v&usqp=CAU",fit: BoxFit.fill,height: 100.0,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,top: 8.0,bottom: 8.0),
                    child: Container(
                      height: 80.0,
                      width: 150.0,
                      child: Image.network("https://cdn.pastemagazine.com/www/system/images/photo_albums/best-book-covers-july-2019/large/bbcjuly19verynice.jpg?1384968217",fit: BoxFit.fill,height: 100.0,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,top: 8.0,bottom: 8.0),
                    child: Container(
                      height: 80.0,
                      width: 150.0,
                      child: Image.network("https://bookcoverdesigns.eu/wp-content/uploads/2018/02/Self-Help-003a.jpg",fit: BoxFit.fill,height: 100.0,),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
