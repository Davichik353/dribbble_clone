import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ExerciseTitle extends StatelessWidget {
final icon;
final String exerciseName;
final int numberOfExercises;
final  color;
  const ExerciseTitle({super.key,
  
  required this.exerciseName,
  required this.numberOfExercises,
  required this.icon,
  required this.color

  });

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom :8.0),
    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                      
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Row(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            color:color,
                            child:  Icon(icon,
                            color: Colors.white,),
                                            
                          ),
                        ),
                      const SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(height: 5,),
                         Text(
                          exerciseName,
                        style: TextStyle(fontSize: 18),
                        ),
                         Text(numberOfExercises.toString()+'Exercises',
                    
                         style: TextStyle(fontSize: 14,
                         color: Colors.green),
                         )
                      ],
                      ),],),
                      Icon(Icons.more_horiz)
                    ],),
                    ),
  );
  }}