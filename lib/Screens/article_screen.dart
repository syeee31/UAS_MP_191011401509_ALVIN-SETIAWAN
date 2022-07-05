import 'package:artikel/Providers/article_provider.dart';
import 'package:artikel/Screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleScreen extends StatefulWidget{
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreen();
}

class _ArticleScreen extends State<ArticleScreen>{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALVIN SETIAWAN 191011401509'),
      ),
      body: Consumer<ArticleProider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.model.results?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        id: '${provider.model.results![index].id}',
                        title: '${provider.model.results![index].title}',
                        image: '${provider.model.results![index].image}',
                        resume: '${provider.model.results![index].resume}',
                        description: '${provider.model.results![index].description}',
                        created_at: '${provider.model.results![index].created_at}'
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                            '${provider.model.results![index].image}',
                            width: 120,
                            fit: BoxFit.fill,
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Column(
                              children: [
                                Text(
                                '${provider.model.results![index].title}',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                                SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                'Tanggal : ${provider.model.results![index].created_at}',
                                style: TextStyle(
                                  fontSize: 12
                                )),
                                )
                                
                              ],
                            )
                        ),
                            
                        // Text(
                        //     'Porsi : ${provider.model.results![index].portion}'),
                        // Text(
                        //     'Level Pembuatan : ${provider.model.results![index].dificulty}'),
                      ],
                    ),
                  ),
                ),
              );
            },
            padding: EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}