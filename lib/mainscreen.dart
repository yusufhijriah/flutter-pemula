import 'package:apps_movie/detail_screen.dart';
import 'package:apps_movie/model/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 48.0,
                          width: 48.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                              image: AssetImage('images/boy_person.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'Yusuf Hijriah',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Movie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 12),
            Container(
              height: 365,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final ListMovie movie = itemMovieList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(movie: movie);
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 306,
                                width: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(movie.imageAsset),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie.title,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: itemMovieList.length,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TV Series',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 350,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final ListMovie movie = itemMovieList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(movie: movie);
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 55.0,
                                      width: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        image: DecorationImage(
                                          image: AssetImage(movie.imageAsset),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 14),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            movie.title,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: itemMovieList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
