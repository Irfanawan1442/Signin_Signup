import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: Login(),
  ));
}
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(

        child: Column(
          children: [
            SizedBox(height: 9,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    height: 60,
                    width: 60,
                    image: AssetImage("images/logo.webp",) ),
                SizedBox(width: 9,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Fly With Me", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
                    Text("Box", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueAccent),)
                  ],
                )

              ],
            ),
            SizedBox(height: 70,),
            Column(children: [

              Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 9,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text("It simply means I heard and acknowledge what you said but am keeping my options open. .",textAlign: TextAlign.center,),
              )
            ],),

            Padding(
              padding: const EdgeInsets.only(top: 70.0 , left: 25, right: 25),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "email",
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: Icon(Icons.email_rounded , color: Colors.blueAccent,),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(9)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.circular(9),)
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25,right: 25),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: Icon(Icons.lock_open, color: Colors.blue,),
                  suffixIcon: Icon(Icons.visibility_off_rounded),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(9),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180,top: 9),
              child: Text("Forget Password", style: TextStyle(decoration: TextDecoration.underline, fontSize: 19),),
            ),
            SizedBox(height: 150,),
            Container(

                height: 40,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(9)
                ),
                child: TextButton(onPressed: (){Navigator.pushNamed(context, "/Home");}, child:  Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17, ),),)
            ),
            SizedBox(height: 9,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have already Account?", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 4,),
                Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 17),),

              ],)
          ],
        ),
      ),
    );
  }
}
