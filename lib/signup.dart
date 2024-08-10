import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Signup(),
  ));
}
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    width: 60,
                    height:60,
                    image: AssetImage("images/logo.webp")),
                SizedBox(width: 9,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fly with Me", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Box", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.blueAccent),)
                  ],
                )
        
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Padding(

                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text("It simply means I heard and acknowledge what you said but am keeping my options open.",textAlign: TextAlign.center,),
                )

              ],
            ),

            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  fillColor: Color(0xffF8F9FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(9)
                  )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "contact",
                  fillColor: Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: Icon(Icons.phone),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(color: Colors.black38)
                  )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  fillColor: Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    borderSide: BorderSide(color: Colors.black45)
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: Icon(Icons.lock_open),
                  suffixIcon: Icon(Icons.visibility_off_rounded),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(9),
                  )
                ),
              ),
            ),
            SizedBox(height: 80,),

            Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(9)
              ),

              child: TextButton(onPressed:(){Navigator.pushNamed(context, "/Login");} , child: Text("SIGN UP" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20),),)
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                SizedBox(width: 4,),
                Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent, fontSize: 16),)
              ],
            )



            ],
        ),
      )

    );
  }
}

