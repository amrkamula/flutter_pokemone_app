import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_poke/data.dart';

class DetailsScreen extends StatelessWidget {
  final index;
  Poke? poke;
  DetailsScreen({this.index= 0}){
    poke = PokeCollection.pokeList[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${poke!.name}'),
        elevation: 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(flex:1,child: Container(),),
                Expanded(flex:15,child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(flex: 2,child: Container(),),
                        Expanded(flex: 2,child: Text('${poke!.name}',style: TextStyle(fontSize: 30.0,color: Colors.black,fontWeight: FontWeight.bold),),),
                        Expanded(flex: 1,child:  Text('Height: ${poke!.height}',style: TextStyle(fontSize: 20.0,color: Colors.grey),),),
                        Expanded(flex: 1,child: Text('Weight: ${poke!.weight}',style: TextStyle(fontSize: 20.0,color: Colors.grey),),),
                        Expanded(flex: 1,child: Text('Types',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),),
                        Expanded(flex: 1,child: CustomOptions(list: poke!.types,col: Colors.yellow,txtCol: Colors.black,),),
                        Expanded(flex: 1,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Weaknesses',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),),
                        Expanded(flex: 1,child: CustomOptions(list: poke!.weaknesses,col: Colors.red,txtCol: Colors.white,),),
                        Expanded(flex: 1,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Next Evolution',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),),
                        Expanded(flex: 1,child: CustomOptions(list: ['${poke!.nextEvolution}'],col: Colors.green,txtCol: Colors.white,),),
                        Expanded(flex: 1,child: Container(),),
                      ],
                    ),
                  ),
                ),),
                Expanded(flex:1,child: Container(),),
              ],
            ),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'dash',
                      child: Image.asset(
                        'poke_assets/${poke!.name}.jpg',
                        fit:BoxFit.cover ,),
                    ),
                  ),
                ),
                Expanded(child: Container(),flex: 10,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomOptions extends StatelessWidget {
  final List<String>? list;
  final Color? col;
  final Color? txtCol;
  CustomOptions({this.list,this.col,this.txtCol});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: list!.map((e){
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: col,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(e,style: TextStyle(color:txtCol,fontWeight: FontWeight.w500),),
              ),
            ),
          );
      }
      ).toList(),
    );
  }
}


