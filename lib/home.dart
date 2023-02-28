import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List qaList=[
    "Your name is karan?",
    "You are 12th pass?",
    "Surat is clean city?",
    "India won the match?",
    "India's national game is cricket?",
  ];
  List ansList=[true,false,true,true,false];
  List userList=[];
  int i=0;
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text("DEMO_APP"),centerTitle: true,),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${qaList[i]}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
                SizedBox(height: 20),
                TextButton(onPressed: () {
                  setState(() {
                    if(i<qaList.length-1)
                    {
                      i++;
                    }
                    if(i<qaList.length)
                      {
                        userList.add(true);
                        print("$userList");
                      }
                  });
                }, child: Text(" ✔True  ",)),
                SizedBox(height: 20),
                TextButton(onPressed: () {
                  setState(() {
                    if(i<qaList.length-1)
                    {
                      i++;
                    }
                    if(i<qaList.length)
                    {
                      userList.add(false);
                      print("$userList");
                    }
                  });
                }, child: Text(" ❌False "),),
                SizedBox(height: 20),
                Visibility(visible: i>=4?true:false,
                  child: TextButton(onPressed:() {
                    setState(() {
                      for(i=0; i<6; i++)
                      {
                        if(ansList[i]==userList[i])
                        {
                          count++;
                        }
                      }
                    },);
                  },child: Text("Result",style: TextStyle(fontWeight: FontWeight.bold),),),
                ),
                SizedBox(height: 20),
                Text("$count",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.brown.shade400),),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red.shade200,
          borderRadius: BorderRadius.all(Radius.circular(200))
        ),
      ),
    );
  }
}
