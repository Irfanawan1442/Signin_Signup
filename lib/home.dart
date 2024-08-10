import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                    Container(
                      height: 97,
                      width: 110,
                      alignment: Alignment.center,
                      color: Colors.amber,
                      child: Image(image: AssetImage("images/logo.webp"),),
                    ),

                ],
              ),
            ),
            SizedBox(height: 50,),
            Text("Welcome Into", style: TextStyle(fontSize: 37),),
            Text("Fly with Me",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent),)
        
          ],
        
        
        ),
      ),
    );
  }
}
