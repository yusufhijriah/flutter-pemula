import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apps_movie/model/list_item.dart';

class DetailScreen extends StatefulWidget {
  final ListMovie movie;

  DetailScreen({required this.movie});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isbooked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1E25),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Details Movie',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Add to Bookmark.'),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: 315,
                height: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(widget.movie.imageAsset),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  widget.movie.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      widget.movie.director,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      widget.movie.star,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Storyline',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  widget.movie.storyline,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isbooked ? Colors.blue : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isbooked = !isbooked;
                    });
                    if (!isbooked) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('You are Booked.'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Cancled Booked.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Text(isbooked ? 'Booked Movie' : 'Canceled Booked'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
