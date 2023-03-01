// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dribbble_clone/util/emoticon_face.dart';
import 'package:dribbble_clone/util/exercise_title.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.mail_sharp),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
      ]),
      backgroundColor: Colors.blue[800],
      body:  SafeArea(child: 
      Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            children: [
Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi,Jared!',
                  style: TextStyle(color: Colors.white,
                  fontSize: 24,
fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('01 March, 2023',
                  style:TextStyle(color: Colors.blue[200]) ,)
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.blue[600],
                borderRadius: BorderRadius.circular(1000)
                ),
                padding: EdgeInsets.all(8),
                child: IconButton(onPressed: (){
                  Text("Bosma ishlamidi");
                }, icon: Icon(Icons.notifications),
                color: Colors.white,),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12 ),
            child: Row(
            children: [Icon(Icons.search,
            color: Colors.white
            ),
            SizedBox(width: 5,),
            Text('Search',
            style: TextStyle(color: Colors.white
            ),
            ),
            ],
            ),
            ),
            SizedBox(
            height: 25,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "How do you feel?",
                  style:  TextStyle(color: Colors.white,
                  fontSize: 18,
                  fontWeight:  FontWeight.bold
                  ),
                  ),
                  
                  Icon(Icons.more_vert,
                  color:Colors.white,
                  ),
              ],
            ),
             SizedBox(
            height: 25,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '😒',
                  ),
                  SizedBox(height: 8,),
                  Text('Bad',
                  style: TextStyle(color: Colors.blue[200]),
                  
                  ),
                ],
              ),


              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '🙂',
                  ),
                  SizedBox(height: 8,),
                  Text('Fine',
                  style: TextStyle(color: Colors.blue[200]),
                  ),
              
                ],
              ),
              
                
                  
                  
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😁',
                    ),
                    SizedBox(height: 8,),
                    Text('Well',
                    style: TextStyle(color: Colors.blue[200]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😂',
                    ),
                    SizedBox(height: 8,),
                    Text('Excellent',
                    style: TextStyle(color: Colors.blue[200]),
                   ),
                  ],
                ),
                
            ],
            ),
            ],
          ),
        ),
        SizedBox(
height: 25,
        ),
          Expanded(
            child: Container(
              padding:EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exercises',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                  SizedBox(height:20),
                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTitle(
                          numberOfExercises: 16,
                          exerciseName: 'Speaking Skillz ',
                          icon: Icons.favorite,
                          color: Colors.orange,
                        ),
                         ExerciseTitle(
                          numberOfExercises: 10,
                          exerciseName: 'Reading Skillz ',
                          color:  Colors.green,
                          icon: Icons.person,
                         ),
                          ExerciseTitle(
                            numberOfExercises: 20,
                          exerciseName: 'Writing Skillz ',
                          icon: Icons.star,
                          color: Colors.pink,
                          )
                  
                      ],
                    ),
                  )
                ],),
              ),
            ),
          )
            
      ],
      )
      ),
    );
    
    
  }
}