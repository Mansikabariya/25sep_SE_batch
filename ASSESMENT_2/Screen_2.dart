//import 'package:audioplayers/audioplayers.dart';
//import 'package:development_project/ASSESMENT_2/Screen_1.dart';
import 'package:development_project/ASSESMENT_2/Screen_1.dart';
import 'package:development_project/ASSESMENT_2/Screen_3.dart';
import 'package:flutter/material.dart';
//import 'package:just_audio/just_audio.dart';

class Screen_2_Note extends StatefulWidget {
  const Screen_2_Note({super.key});

  @override
  State<Screen_2_Note> createState() => _Screen_2_NoteState();
}

class _Screen_2_NoteState extends State<Screen_2_Note> {
 //late AudioPlayer player = AudioPlayer();
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   player = AudioPlayer();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp)  async{
  //     await player.setSource(AssetSource("assets/images/Audio.mp3"));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 189, 83),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  //Icon(Icons.arrow_back,color: Colors.black,),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_1_Note()));
                  }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                  Text("Paris",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(width: 190),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Screen_3_Note())));
                    },
                    child: Icon(Icons.brush)),
                  //SizedBox(width: 10),
                  Icon(Icons.more_vert),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,right: 20,left: 10),
                child: Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Image.asset("assets/images/Paris.jpeg",height: 200,fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 20),
                child: Text("Paris is the capital and most populous city of France. With an official estimated population of 2,102,650 residents as of 1 January 2023[2] in an area of more than 105 km2 Paris is the fourth-most populated city in the European Union and the 30th most densely populated city in the world in 2022. Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy. For its leading role in the arts and sciences, as well as its early and extensive system of street lighting, in the 19th century, it became known as the City of Light."
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 20),
                child: Text("The City of Paris is the centre of the Île-de-France region, or Paris Region, with an official estimated population of 12,271,794 inhabitants on 1 January 2023, or about 19% of the population of France.The Paris Region had a GDP of €765 billion in 2021, the highest in the European Union. According to the Economist Intelligence Unit Worldwide Cost of Living Survey, in 2022, Paris was the city with the ninth-highest cost of living in the world."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}