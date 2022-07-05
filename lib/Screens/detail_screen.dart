import 'package:artikel/Providers/article_provider.dart';
import 'package:artikel/Providers/article_provider2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget{
  final String? id;
  final String? title;
  final String? resume;
  final String? description;
  final String? created_at;
  final String? image;

  const DetailScreen({
    this.id,
    this.title,
    this.resume,
    this.description,
    this.created_at,
    this.image,
    Key? key
    }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Card(
            child: Column(
              children: [
                Image.network('${widget.image}'),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text('${widget.title}',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text('Tanggal : ${widget.created_at}'),
                          SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ),
                SizedBox(
                  height: 15,
                ),
                 Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                Text('${widget.description}'),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}