import 'package:flutter/material.dart';
import 'package:website/Navbar/navbar.dart';



class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double Containerwidth){
    return <Widget>[
      Container(
        width: Containerwidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Website \nDevelopers", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,

            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("This is demo page which i am going to design, thats why i am creating this  sdjkf jlksdjflksj flkjsldkfj slkd fjsl dkfjslkdfjslkdjflksdjf lkjlsjdlkf jlsdf l ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,

              ),),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                child: Text(
                  "Our Packages", style: TextStyle(color: Colors.red, ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset("assets/images/logo.png", width: Containerwidth,),
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth>800){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width/2),

            );
          }else{
            return Column(
              children: pageChildren(constraints.biggest.width),
            );
          }
        }
    );
  }
}
