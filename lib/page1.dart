import 'package:flutter/material.dart';
import 'package:themes/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var Height= MediaQuery.of(context).size.height;
   var Width= MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        leading: null,
        centerTitle: true,
        title: const Text('PAGE 1'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Center(child: Text("Profile",style: TextStyle(
              fontSize: 30
            ),)),
            const SizedBox(
              height: 30,

            ),
            Container(
              height: 200,
              width: 200,
              decoration:  BoxDecoration(

                borderRadius: BorderRadius.circular(100),
                image:const DecorationImage(
                  image:  NetworkImage('https://images.pexels.com/photos/162140/duckling-birds-yellow-fluffy-162140.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                  fit: BoxFit.fill
                )
              ),

            ),
            const SizedBox(
              height: 30,
            ),
              Card(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children:  [
                     const Icon(Icons.person),
                     SizedBox(width: Width /3),
                     const Text('My Name',style: TextStyle(fontSize: 20),),
                   ],
                 ),
               ),
             ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:  [
                    const Icon(Icons.work),
                    SizedBox(width: Width /3),
                    const Text('IT Company',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 20),
              child: ElevatedButton(
                onPressed: (){
                Navigator.push((context), MaterialPageRoute(builder: (context)=>const Page2()));
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [

                  const Text('Contact',style: TextStyle(fontSize: 20),),
                  const Icon(Icons.arrow_forward_ios_sharp),

                ],
              ),),
            )
          ],
        ),
      ),

    );
  }
}
