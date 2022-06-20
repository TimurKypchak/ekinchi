import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserFile extends StatelessWidget {
  const UserFile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image =  AssetImage('images/m.png');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Тапшырма 04', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color:const Color.fromARGB(255, 2, 96, 120),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Container(
                child: Image(image: image),
                decoration:const BoxDecoration(shape:BoxShape.circle, color: Color.fromRGBO(224, 222, 222, 1),),
              ),
              Text ('Timur Kypchakov', style: GoogleFonts.bungeeInline (textStyle: const TextStyle (fontSize: 25, color: Colors.white),),),
              Text('Flutter Developer', style: GoogleFonts.odibeeSans (textStyle: const TextStyle(fontSize: 20, color: Colors.grey, decoration: TextDecoration.underline),),),      
                const SizedBox(height: 20),
                const _MenuWidget(),
            ]
          ),
        ),
      ),
    );
  }
}
class _MenuWidget extends StatelessWidget {
  const _MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child:Row(
                    children: const [ 
                      Icon(Icons.phone, color: Color.fromARGB(255, 2, 96, 120),),
                      SizedBox(width: 35),
                      Text('+996 772 667333',style: TextStyle(color: Color.fromARGB(255, 2, 96, 120), fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            color: Colors.white,
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
                children: const [
                  Icon(Icons.mail, color: Color.fromARGB(255, 2, 96, 120),),
                  SizedBox(width: 35),
                  Text('timurkypchak@gmail.com',style: TextStyle(color: Color.fromARGB(255, 2, 96, 120), fontSize: 18, fontWeight: FontWeight.bold),),
                ],
            ),
          ),
         ),
        ],
      ),
    );
  }
}