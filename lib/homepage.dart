
import 'package:figma/Api/Lessons.dart';
import 'package:figma/Api/Programs.dart';
import 'package:figma/ui/RowImage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                //Custom App Bar
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.sort,size: 40,color: Colors.blueGrey,),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Icon(Icons.chat_bubble_outline_rounded,size: 30,color: Colors.blueGrey,),
                                ),
                                Icon(Icons.notifications_none_rounded,size: 40,color: Colors.blueGrey,),
                              ],
                            )
                          ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,),
                            child: Container(
                                alignment: Alignment.topLeft
                                ,child: Text("Hello,Priya!",style: GoogleFonts.laila(fontWeight: FontWeight.bold,fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text("What do you wanna learn today?",style: GoogleFonts.lato(color: Colors.blueGrey,fontSize: 15),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 30),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProgramList()));
                                  },
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 50,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                          child: Icon(Icons.book,size: 30,color: Colors.blue,),
                                        ),

                                       Padding(
                                         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                         child: Text("Programs",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18)),
                                       )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 50,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                          child: Icon(Icons.help,size: 30,color: Colors.blue,),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                          child: Text("Get help",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18)),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21,),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>LessonList()));
                                  },
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 50,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                          child: Icon(Icons.book_online_outlined,size: 30,color: Colors.blue,),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                          child: Text("Learn",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 50,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                          child: Icon(Icons.graphic_eq_rounded,size: 30,color: Colors.blue,),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                                          child: Text("DD Tracker",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18)),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(alignment:Alignment.topLeft,child: Text("Programs for You",style: GoogleFonts.lato(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold ),)),
                                Align(alignment:Alignment.topRight,child: Text("View all->",style: GoogleFonts.lato(color:Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold ),)),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                    RowImages(),

                  ]
              ),
            )
        ),



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,color: Colors.grey,),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view,color: Colors.grey,),
              label: "Hub"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.grey,),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color:Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
