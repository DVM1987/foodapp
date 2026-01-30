import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    final params =
        (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{})
            as Map;
    String title = (params['title']).toString();
    return Scaffold(
      appBar: AppBar(title: Text('Category $title')),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 20);
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            height: 220,
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.white70,
                title: Center(
                  child: Text(
                    'test 200',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: Colors.black38),
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.favorite),

                    Text('123'),
                    SizedBox(width: 10),
                    Icon(Icons.timelapse_sharp),

                    Text('123'),
                  ],
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1769160398702-7c1342fba018?q=80&w=1159&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
