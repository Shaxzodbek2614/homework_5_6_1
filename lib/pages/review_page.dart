import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:omework_5_6_1/pages/comments_page.dart';
import 'package:omework_5_6_1/pages/your_cart_page.dart';

class ReviewPage extends StatefulWidget {
  final Map<String,dynamic> map;
  const ReviewPage({super.key,required this.map});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.map["name"],style: TextStyle(fontSize: 30,color: Colors.black),),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                color: widget.map["color"],
                padding: EdgeInsets.all(50),
                child: Image.asset(widget.map["image"]),
              ),
              Positioned(
                right: 30,
                top: 30,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$${widget.map["price"]}"),
                  ),
                ),
              )
            ],
          ),
          Text("Furniture",style: TextStyle(color: Colors.grey),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: 3,          // boshlang‘ich baho
                minRating: 1,              // eng kam reyting
                direction: Axis.horizontal,
                allowHalfRating: true,     // yarim yulduz ham qo‘yish mumkin
                itemCount: 5, // nechta yulduz
                itemSize: 20,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 10,
                ),
                onRatingUpdate: (rating) {
                },
              ),
              SizedBox(width: 10,),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CommentsPage()));
              }, child: Text("124 views",style: TextStyle(color: Colors.blue),),),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 50,right: 50,bottom: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>YourCartPage(item: widget.map)));
                }, child: Text("Add to Cart")),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.cases_outlined),
            selectedIcon: Icon(Icons.cases_rounded),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: 'Likes',
          ),
        ],
      ),
    );
  }
}
