import 'dart:math';

import 'package:bmicalulater/bmi_result.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


class BmiScreen extends StatefulWidget {

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool ismale=true;
  double h=80.0;
   int age=10;
  int w=40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Calculater'
        ),
        leading:IconButton(
          onPressed: ()
          {
            Navigator.pop(context);

          }, 
          icon:const Icon(
            Icons.keyboard_arrow_left,
          ),
         
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Icon(
                               Icons.male,
                               size: 135.0,
                             ),

                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              color:ismale ? Colors.blue: Colors.grey[300]
                          ),

                        ),
                        onTap: () {
                          setState(()
                          {
                            ismale=true;
                          });
                        }
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 135.0,
                              ),

                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color:!ismale? Colors.blue:Colors.grey[300],
                          ),
                        ),
                          onTap: () {
                            setState(()
                            {
                              ismale=false;
                            });
                          }
                      ),
                    ),

                  ],
                ),
              )
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${h.ceil()}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0
                          ),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Slider(
                      value: h,
                      max: 220.0,
                      min:80.0,
                         onChanged: (value){
                      setState(() {
                        h=value;
                      });

                        },
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:Colors.grey[300]
                ),

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 25.0
                            ),
                          ),
                          Text(
                            '$w',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    w--;

                                  });
                                },
                                heroTag: w--,
                                mini:true,
                                child: Icon(
                                    Icons.remove
                                ),

                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    setState(() {
                                      w++;
                                    });

                                  });
                                },
                                heroTag: w++,
                                mini:true,
                                child: Icon(

                                    Icons.add
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:Colors.grey[300]
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 25.0
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 40.0
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: age--,
                                mini:true,
                                child: Icon(

                                    Icons.remove
                                ),

                              ),

                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: age++,
                                mini:true,
                                child: Icon(

                                    Icons.add
                                ),

                              ),
                            ],
                          ),
                        ],

                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:Colors.grey[300]
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
         Container(
           width: double.infinity,
           height: 50.0,
           color: Colors.black,
           child: MaterialButton(
               onPressed:(){
                 var res=w/pow(h/100,2);
                 print(res.ceil());
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder:(context) => BmiResult(
                         age: age,
                         res: res.ceil(),
                         ismale: ismale,
                       ),
                   ),
                 );
               },
             child: Text(
               'calculate',
               style: TextStyle(
                 color: Colors.white
               ),
             ),
           ),
         ),
        ],
      ),
    );
  }


}
