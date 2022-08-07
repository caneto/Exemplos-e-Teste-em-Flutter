import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryApp extends StatefulWidget {
  @override
  _GalleryAppState createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  static const title = [
    "https://images.unsplash.com/photo-1566763306929-a936c7856f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1590013330451-3946e83e0392?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1590013335840-83bbe7031d4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=680&q=80",
    "https://images.unsplash.com/photo-1587613980697-aaf1a97de24c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1589829996053-dd41d0a5123a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1590043336529-b7a5157acb14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal:12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Gallery App",
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 18.0,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                    hintText: "Searh Image",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    )
                ),
              ),
              SizedBox(height: 24.0,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:18.0),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: [
                      ...title.mapIndexed((index, tile) {
                        return StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: ImageTile(
                            img: tile,
                          ),
                        );
                      }),
                    ],
                  )
                ),
              ),
           ]),
        ),
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Image.network(img,
      width: 300,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}