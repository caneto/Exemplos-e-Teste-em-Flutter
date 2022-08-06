import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  //Putting the Image List
  late int _current;
  List imgList = [
    'https://images.unsplash.com/photo-1590083948608-525d75ee5edb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
    'https://images.unsplash.com/photo-1566763481246-3d765d357293?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1566764577421-ad670748f51c?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1566764579018-da7fde771fb4?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1566763306929-a936c7856f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:28.0,horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Descubra um novo horizonte",
                style: TextStyle(
                  color: Color(0xff142243),
                  fontSize: 32.0,
                ),
                textAlign: TextAlign.start,

              ),
              SizedBox(height: 20.0,),
              const Text(
                "escolha o seu próximo destino e boa viagem",
                style: TextStyle(
                    fontSize:18.0,
                    color: Color(0xff142243),
                    letterSpacing: 3.0,
                    height: 1.5
                ),
              ),
              SizedBox(height: 30.0,),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  onPageChanged: (index,reason){
                    setState(() {
                      _current = index;
                    });
                },),

                items:imgList.map((imgUrl){
                  return Builder(
                    builder: (BuildContext context){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: Image.network(imgUrl,fit: BoxFit.fill,),
                      );
                    },
                  );
                }).toList()
                ,
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Flight',
            icon: Icon(Icons.airplanemode_active),
          ),
          BottomNavigationBarItem(
              label: 'Sua Viagem',
              icon: Icon(Icons.book,size: 22,)
          ),
          BottomNavigationBarItem(
              label: 'Hoteis',
              icon: Icon(Icons.hotel),
          ),
          BottomNavigationBarItem(
              label: 'Destinatario',
              icon: Icon(Icons.map)
          ),
        ],
      ),
    );
  }
}