import 'package:flutter/material.dart';
import 'package:bhasa_application/main.dart';
import 'package:bhasa_application/constants.dart';
import 'package:bhasa_application/widgets/rounded_button.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/homebg.png'), // add your image path here
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 240.0, top: 50.0, right: 20.0, bottom: 0.0),
              child: Text(
                'What are you',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0, 
                  color: kLightBlackColor,
                  fontWeight: FontWeight.normal,// smaller font size
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140.0, top: 20.0, right: 20.0, bottom: 30.0),
              child: Text(
                'Learning Today?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 26.0, // larger font size
                  color: kBlackColor, // using kBlackColor constant
                  fontWeight: FontWeight.bold,        
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                         GestureDetector(
                    onTap: () {
                      // handle image 1 click
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/book-1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 12, color: Colors.white70, ), ]),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    'Katakana',
                                    
                                    style: TextStyle(
                                      color: kBlackColor,
                                      
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            
                          ),
                           
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // handle image 2 click
                    },
                    child: Column(
                      children: [
                        
                        Container(
                          width: 200,
                          height: 120,
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/book-2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 20,),
                              Icon(
                              Icons.star, color: Colors.redAccent,
                              ),
                              Text('Rate 4.5', style: TextStyle(color: Colors.redAccent),)
                        
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(onPressed: () {

                            }, child: Text('Read')),
                            SizedBox(width: 8,),
                            ElevatedButton(onPressed: () {

                            }, child: Text('Download')),
                          ],
                        ) 
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // handle image 3 click
                    },
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/book-3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              
            )
          ],
        ),
      ),
    );
  }
}
