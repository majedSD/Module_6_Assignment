/**
 *
 *
 * -------------------------Majedul Islam------------------
 * -------------------------Module-6-Assignment---------------
 *
 *
 */


import 'package:flutter/material.dart';

void main() {
  runApp(HomeActivity());
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoGalleryHomePage(),
    );
  }
}



class PhotoGalleryHomePage extends StatelessWidget {
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  final List<String> images = [
    'https://hips.hearstapps.com/hmg-prod/images/cute-cat-photos-1593441022.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_zPMis8lyVU9MV0Htg5boyz7NP9LYkEY3A&usqp=CAU',
    'https://thumbs.dreamstime.com/b/four-cute-cats-20650677.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/002/098/204/small/silver-tabby-cat-sitting-on-green-background-free-photo.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuwWt86N3mO58gwo4JKldZHI6jOpXTVIMAq8_aIcex&s',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Photo Gallery')),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 0,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                        MySnackBar('Photo ${index + 1} Clicked!',context);
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.network(
                          images[index],
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Center(child: Text('Photo ${index + 1}')),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.network(
                'https://hips.hearstapps.com/hmg-prod/images/cute-cat-photos-1593441022.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*',
                height: 100,
                width: 80,
                fit: BoxFit.cover,
              ),
              title: Text('Photo 1'),
              subtitle: Text('Description for Photo 1'),
            ),

            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
                height: 100,
                width: 80,
                fit: BoxFit.cover,
              ),
              title: Text('Photo 2'),
              subtitle: Text('Description for Photo 2'),
            ),

            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_zPMis8lyVU9MV0Htg5boyz7NP9LYkEY3A&usqp=CAU',
                height: 100,
                width: 80,
                fit: BoxFit.cover,
              ),
              title: Text('Photo 3'),
              subtitle: Text('Description for Photo 3'),
            ),
            SizedBox(
              width: 500,
              child: FloatingActionButton(
                elevation: 18,
                child: Icon(Icons.upload),
                onPressed: () {
                  MySnackBar("Photo Uploaded Successfully",context);
                },
                //child: Icon(Icons.upload),
              ),
            ),
          ],
        ),
      ),
    );
  }
}