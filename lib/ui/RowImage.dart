import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RowImages extends StatelessWidget {
  const RowImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Row(
                      children: [
                        for(int i=1;i<3;i++)
                          Container(
                            margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                              ),],
                            ),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                                        child: Image.asset('lib/assets/images/Women$i.png',height: 150,width: 150,fit: BoxFit.contain,),
                                      ),
                                      if(i==1)
                                      const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 0),
                                          child:  Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text("Working Program",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15)),
                                          )
                                      ),
                                      if(i==2)
                                     const Padding(
                                       padding: EdgeInsets.symmetric(horizontal: 0),
                                      child:  Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text("LIFESTYLE",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15)),
                                      )
                                     ),
                                      if(i==1)
                                      Text("Understanding about behaviour",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                      if(i==2)
                                        Text("A complete guide for your\n new born baby",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    ],
                                  ),

                                  ],
                                ),
                              ],
                            ),
                          ),

                      ],
                    ),
                  ),

                ],
              ),




      ),
    );
  }
}
