import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

class instaimage extends StatelessWidget {
   instaimage({super.key});

  final List<String> images = [
    "assets/sea.jpg",
    "assets/sunset.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LikeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title:  Text("Instagram Like System"),
        backgroundColor: Colors.lightBlue.shade300,
        centerTitle: true,
      ),
      body: 
      ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) { // this is for run again and again
          bool isLiked = provider.isLiked(index);

          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      images[index],
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                    
                Row(    //it is for like button row
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.black,
                      ),
                      onPressed: () {
                        provider.toggleLike(index);
                      },
                    ),
                    Text(
                      isLiked ? "Liked" : "Like",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              SizedBox(height: 15),
              ],
            ),
          );
        },
      ),
    );
  }
}
