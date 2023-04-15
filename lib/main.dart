import 'package:bhasa_application/constants.dart';
import 'package:bhasa_application/screens/home_screen.dart';
import 'package:bhasa_application/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bhasa_application',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
       textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor,
       ),
      ),
      home: WelcomeScreen(),
    );
  }
}
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
       decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/Screenshot.png"),
          fit: BoxFit.fill, 
          ),
          
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [TextSpan(text: "JapneseBhasa",
                   style: Theme.of(context).textTheme.displaySmall,
                   ),
                   
                ],
                ),
                ),
          
            RoundedButton(
            text: 'Start Learning',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => MyHomePage()),
                 );
            },
          ),
              ],
          ) ,
      ),

    );
  }
  }