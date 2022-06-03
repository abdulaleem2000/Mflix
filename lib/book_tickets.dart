
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
int row=6;
int col=6;
class BookTickets extends StatefulWidget{
  @override
  TicketState createState() => TicketState();
}

class TicketState extends State<BookTickets>{

  bool isSelected=false;
  bool isLongSelected=false;
  var seats = List.generate(row, (i) => List.filled(col, 0, growable: false), growable: false) ;

@override
  void initState(){
  print(seats);

  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 30,),
            Container(
              child:  Text('Book Movie Tickets',style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10,),
            Text('Screen'),
            Container(
                child:Icon(Icons.airplay,size: 200,),

            ),
            Text('Seats'),
            SizedBox(height: 10,),
            //row1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=0;
                      int y=0;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }




                    },
                    onLongPress: () {
                      int x=0;
                      int y=0;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child:seats[0][0]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,)
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=0;
                      int y=1;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=0;
                      int y=1;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[0][1]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=0;
                      int y=2;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=0;
                      int y=2;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child:seats[0][2]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=0;
                      int y=3;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=0;
                      int y=3;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child:seats[0][3]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=0;
                      int y=4;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=0;
                      int y=4;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child:seats[0][4]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=0;
                      int y=5;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=0;
                      int y=5;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[0][5]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            //row2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=1;
                      int y=0;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=1;
                      int y=0;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[1][0]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=1;
                      int y=1;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=1;
                      int y=1;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[1][1]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=1;
                      int y=2;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=1;
                      int y=2;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[1][2]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=1;
                      int y=3;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=1;
                      int y=3;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[1][3]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=1;
                      int y=4;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=1;
                      int y=4;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child:seats[1][4]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=1;
                      int y=5;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=1;
                      int y=5;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[1][5]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            //row3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=2;
                      int y=0;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=2;
                      int y=0;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[2][0]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=2;
                      int y=1;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=2;
                      int y=1;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[2][1]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=2;
                      int y=2;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=2;
                      int y=2;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[2][2]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=2;
                      int y=3;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=2;
                      int y=3;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[2][3]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=2;
                      int y=4;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=2;
                      int y=4;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child: seats[2][4]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      int x=2;
                      int y=5;
                      if(isLongSelected==false){
                        for(int i=0;i<6;i++){
                          for(int j=0;j<6;j++){
                            seats[i][j]=0;
                          }
                        }
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                      else{
                        seats[x][y]=1;
                        setState(() {

                        });
                      }
                    },
                    onLongPress: () {
                      int x=2;
                      int y=5;
                      for(int i=0;i<6;i++){
                        for(int j=0;j<6;j++){
                          seats[i][j]=0;
                        }
                      }
                      isLongSelected=true;
                      seats[x][y]=1;
                      setState(() {

                      });
                    },
                    child: Ink(
                      child:seats[2][5]==1? Icon(Icons.weekend,color: Colors.red,):Icon(Icons.weekend,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              isLongSelected=false;
              for(int i=0;i<6;i++){
                for(int j=0;j<6;j++){
                  seats[i][j]=0;
                }
              }
              setState(() {

              });
            }, child: Text('Reset')),
              ],
            ),


        ),

      );
  }

}