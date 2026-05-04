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
        title: const Text("Instagram Like System"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          bool isLiked = provider.isLiked(index);

          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🖼️ Image
                Stack(
                  children: [
                    Image.asset(
                      images[index],
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),

                    // ❤️ Double tap like effect
                    Positioned.fill(
                      child: GestureDetector(
                        onDoubleTap: () {
                          provider.toggleLike(index);
                        },
                        child: Container(color: Colors.transparent),
                      ),
                    ),
                  ],
                ),

                // ❤️ Like button row
                Row(
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
                      isLiked ? "Liked ❤️" : "Like 🤍",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
