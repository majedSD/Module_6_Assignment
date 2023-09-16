/**------------------MAJEDUL ISLAM-----------------
 * ------------------MODULE-6-ASSIGNMENT-----------
 */
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeActivity());
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 70,
        title: Text('Home'),
        centerTitle: true,
        leading: Icon(Icons.add_business),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is mod 5 Assignment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              RichText(text: TextSpan(
                  children:[
                    TextSpan(text: 'My ',style: TextStyle(color: Colors.pink,fontSize: 30),),
                    TextSpan(text: 'phone ',style: TextStyle(color: Colors.lightBlue),),
                    TextSpan(text: 'name ',style: TextStyle(color: Colors.purpleAccent,fontSize: 20),),
                    TextSpan(text: 'Your phone name ',style: TextStyle(color: Colors.orangeAccent,fontSize: 30),),
                  ]
              )

              ),

            ],
          )
      ),
    );

  }
}