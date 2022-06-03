import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:untitled/MovieDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: 'Mflix',
      theme: ThemeData(
       brightness: Brightness.dark,
      primaryColor: Colors.red
      ),

      );

  }
}

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List upcomingMovies = [];
  String apiKey = 'dd0c83a187aa1ffc2e8bb54051106902';
  String readAccessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkZDBjODNhMTg3YWExZmZjMmU4YmI1NDA1MTEwNjkwMiIsInN1YiI6IjYyOTc2M2NjZDcxZmI0MTZjYTI0MjQwYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.sgKeCmokUQrnsXiVpHSKktKYhT9ldiANrYx2JRaO-qE';
  @override
  void initState() {
    tmdbUpcomingInstance();
    super.initState();
  }
  tmdbUpcomingInstance() async{
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apiKey, readAccessToken),
      logConfig: ConfigLogger(
        showLogs: true,//must be true than only all other logs will be shown
        showErrorLogs: true,
      ),);
    Map upcomingResult = await tmdbWithCustomLogs.v3.movies.getUpcoming();
    setState(() {
      upcomingMovies = upcomingResult['results'];

    });
    print(upcomingMovies);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             //main title
             Container(

               padding: EdgeInsets.all(40),
               margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
               child: Text('Mflix',
                 style: TextStyle(
                     fontSize: 32,
                     letterSpacing: 4,
                     color: Colors.red,
                     fontWeight: FontWeight.bold
                 ),
               ),


             ),
             //search icon
             Container(
               child: Material(
                 child: InkWell(
                   onTap: () {
                     showSearch(context: context, delegate: SerchDelegate());
                   },
                   child: Ink(
                     child: Icon(Icons.search,),
                   ),
                 ),
               ),
             )
           ],
         ),
          //upcoming movies container
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Upcoming Movies',
              style: TextStyle(
                  fontSize: 20,
              ),
            ),

          ),

          Container(

            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*0.70,
            child: ListView.builder(itemCount: upcomingMovies.length,
                scrollDirection: Axis.vertical,
                itemBuilder:(context,index){
              return InkWell(
                onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetails(movieId: upcomingMovies[index]['id'], name: upcomingMovies[index]['title'], bannerUrl:  'https://image.tmdb.org/t/p/w500'+upcomingMovies[index]['backdrop_path'], posterUrl:  'https://image.tmdb.org/t/p/w500'+upcomingMovies[index]['poster_path'], overview: upcomingMovies[index]['overview'], rating: upcomingMovies[index]['vote_average'].toString(), release: upcomingMovies[index]['release_date'])));

                },
              child: Container(
                width: 140,

                child: Row(
                  children: [
                    Container(
                      height: 100,

padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(

                          image: DecorationImage(image: NetworkImage(

                          'https://image.tmdb.org/t/p/w500'+upcomingMovies[index]['poster_path'])
                      )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                        child: Text(upcomingMovies[index]['title']),
                      )],
                    )

                  ],
                ),
              ),
              );

                }),)




        ],


      ),

    );
  }
}

class SerchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
       return close(context, null);
      }, icon: Icon(Icons.clear)),
    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      query='';
    }, icon: Icon(Icons.search));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child:Text(query),);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   List<String> suggetions=[];
   return ListView.builder(itemBuilder: (context,index){
     return ListTile(

     );
   });
  }
}


