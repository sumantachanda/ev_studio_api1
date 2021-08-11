import 'package:ev_studio_api1/ApiModels/news_a_pi_ev.dart';

import 'package:ev_studio_api1/ApiModels/apiManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<NewsAPiEv?>? _newsModel;

  @override
  void initState() {
    _newsModel = NewsAPiManager().getNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children: [

          FutureBuilder(
            future: _newsModel,
            builder:(context,Snapshot){

              if(Snapshot.hasData){ return ListView.builder(itemBuilder: (context, index){
                return Container(
                    height: 700,
                    width: 500,
                    color: Colors.deepPurpleAccent,
                    child:Center(
                      child: Column(

                        children: [
                          Container(
                            height: 220,
                            width: 300,
                            color:  Colors.cyan
                            ,
                          ),

                          Container(
                            height: 220,
                            width: 300,
                            color:  Colors.red
                            ,
                          )
                        ],
                      ),
                    )
                );
              }
              );}

              else
                return  Center(
                  child: SpinKitRotatingPlain(
                      color: Colors.orange,
                      size: 80.0,
                )

                );
            }



          )






        ],
      ),
    );
  }
}
