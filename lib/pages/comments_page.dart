import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommentsPage extends StatelessWidget {
   CommentsPage({super.key});

   List<Map<String,dynamic>> list(){
     List<Map<String,dynamic>> comments = [];
     for(int i = 1;i<=10;i++){
       comments.addAll([
         {"image":"assets/images/img_4.png","name":"Jessie Phelps", "rating": 5.0,"title":"Great chair","desc":"The size and color blends well with our mind century home. Sturdy and comfortable. Very happy with this purchase"},
         {"image":"assets/images/img_5.png","name":"Larry May", "rating": 5.0,"title":"Love new chairs","desc":"The size and color blends well with our mind century home. Sturdy and comfortable."},
         {"image":"assets/images/img_6.png","name":"Bradley Parks", "rating": 4.5,"title":"Place to relax in bedroom","desc":"The size and color blends well with our mind century home. "},
         {"image":"assets/images/img_7.png","name":"Jackson Rogers", "rating": 4.0,"title":"A bit of a wait, but worth it","desc":"The size and color blends well with our mind century home. Sturdy and comfortable."},
       ]);
     }
     return comments;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reviews(45)",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(
          itemBuilder: (context, index) {
            var item = list()[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(item["image"]),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item["name"],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: item["rating"],          // boshlang‘ich baho
                              minRating: 1,              // eng kam reyting
                              direction: Axis.horizontal,
                              allowHalfRating: true,     // yarim yulduz ham qo‘yish mumkin
                              itemCount: 5, // nechta yulduz
                              itemSize: 16,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                              onRatingUpdate: (rating) {
                              },
                            ),
                            SizedBox(width: 10,),
                            Text("Review left on Jan 06,2020",style: TextStyle(color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(item["title"],style: TextStyle(fontSize: 18,color: Colors.black),),
                Text(item["desc"])
              ],
            );
          },
          separatorBuilder: (context, index) => Divider(color: Colors.grey),
          itemCount: list().length,
        ),
      ),
    );
  }
}
