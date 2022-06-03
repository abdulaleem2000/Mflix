

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:untitled/book_tickets.dart';
import 'package:untitled/movie_trailer.dart';

class MovieDetails extends StatefulWidget{
  final String name,bannerUrl,posterUrl,overview,rating,release;
  final int movieId;

  const MovieDetails({Key? key, required this.movieId, required this.name, required this.bannerUrl, required this.posterUrl, required this.overview, required this.rating, required this.release}) : super(key: key);


  @override
  DetailsState createState() => DetailsState(movieId,name,bannerUrl,posterUrl,overview,rating,release,[],'');


}

class DetailsState extends State<MovieDetails>{
  final String name,bannerUrl,posterUrl,overview,rating,release;
  final int movieId;
  List videoKey = [];
  String videoKey1;
  String apiKey = 'dd0c83a187aa1ffc2e8bb54051106902';
  String readAccessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkZDBjODNhMTg3YWExZmZjMmU4YmI1NDA1MTEwNjkwMiIsInN1YiI6IjYyOTc2M2NjZDcxZmI0MTZjYTI0MjQwYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.sgKeCmokUQrnsXiVpHSKktKYhT9ldiANrYx2JRaO-qE';


  DetailsState(this.movieId,this.name, this.bannerUrl, this.posterUrl, this.overview, this.rating, this.release,this.videoKey,this.videoKey1);

  void initState(){


    tmdbUpcomingInstance();
    super.initState();
  }
  tmdbUpcomingInstance() async{
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apiKey, readAccessToken),
      logConfig: ConfigLogger(
        showLogs: true,//must be true than only all other logs will be shown
        showErrorLogs: true,
      ),);
    Map upcomingResult = await tmdbWithCustomLogs.v3.movies.getVideos(movieId);
   //print(upcomingResult['results']);
    setState(() {

      videoKey = upcomingResult['results'];
      int i=0;
      while(true){
        if(videoKey[i]['type']=='Trailer'){
          videoKey1=videoKey[i]['key'];
          print(videoKey1);
          break;
        }
        i++;
      }
    });
   print(videoKey);
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 250,
            width: MediaQuery.of(context).size.width,

            child: Image.network(bannerUrl,fit: BoxFit.cover,),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width:MediaQuery.of(context).size.width*0.65,
                  child:Text(name,style: TextStyle(
                    fontSize: 24,

                  ),)
              )
             ,
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Trailer(videoKey: videoKey1)));

              }, child: Text('▷Watch Trailer'))
            ],
          )
          ,
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 100,

                child: Image.network(posterUrl),
              ),

              Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width*0.65,
                  height: 150,
                  child: SingleChildScrollView(
                    child: Text(overview),
                  )
              )
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:Text('⭐Rating: '+rating,style: TextStyle(
                  fontSize: 20
              ))
          ),
          SizedBox(height: 20,),
          Container(
    margin: EdgeInsets.all(10),
            child: ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BookTickets()));
            }, icon: Icon(
              Icons.movie,
              color: Colors.red,
            ), label: Text('Book Tickets',style: TextStyle(
              fontSize: 20
            ),)),
          ),
        ],
      ),
    );
  }
}