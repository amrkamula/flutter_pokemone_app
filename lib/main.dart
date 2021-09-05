import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'details_screen.dart';

void main(){
  runApp(MyPokeApp());
}

class MyPokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poke App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PokeScreen(title: 'Poke App',),
    );
  }
}

class PokeScreen extends StatefulWidget {
  final title;
  PokeScreen({Key? key,this.title}):super(key: key);
  @override
  _PokeScreenState createState() => _PokeScreenState();
}

class _PokeScreenState extends State<PokeScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            PokeCollection.pokeList.shuffle();
          });
        },
        child: Icon(Icons.refresh),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: PokeCollection.pokeList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context,int index){
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(index: index,)));
                  },
                  child: Card(
                    elevation: 3.0,
                    child: Column(
                      children: [

                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'dash',
                              child: Image.asset(
                                'poke_assets/${PokeCollection.pokeList[index].name}.jpg',
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Text('${PokeCollection.pokeList[index].name}',style: TextStyle(fontWeight: FontWeight.bold),),
                            ))
                      ],
                    ),
                  ),
                ),

              );
            }
        ),
      ),
    );
  }
}


