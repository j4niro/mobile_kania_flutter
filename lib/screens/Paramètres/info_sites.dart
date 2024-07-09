import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';

class InfoSites extends StatelessWidget {
  const InfoSites({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar : CustomAppBar(),
      body : Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child : Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                    "Informations sur les sites",
                    style: TextStyle(
                        //fontFamily: GoogleFonts.outfit().fontFamily,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     TextButton(
                      
                      onPressed: (){},
                      child: Container(
                        width: width*0.4,
                        height: height*0.06,
                        child: Center(child: Text('Ajouter un site', style: TextStyle(color: Colors.black),)),
                        decoration: BoxDecoration(
                          color: Color(0XFFF1F1F1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0XFFff7900)),
                        ),
                      )),
                      TextButton(
                      onPressed: (){},
                      child: Container(
                        width: width*0.42,
                        height: height*0.06,
                        child: Center(child: Text('Ajouter un gestionnaire', style: TextStyle(color: Colors.black),)),
                        decoration: BoxDecoration(
                          color: Color(0XFFF1F1F1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0XFFff7900)),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            width: width*0.46,
                            height: height*0.15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nombres de sites', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('340', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0XFFFF7900)),),
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                              BoxShadow(
                                color:Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 3.84,
                                offset: const Offset(0, 2), 
                              ),],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              //border: Border.all(color: Color(0XFFff7900)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            width: width*0.46,
                            height: height*0.15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nombres de dispositifs', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('345', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0XFFFF7900)),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ 
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      width: width*0.18,
                                      decoration: BoxDecoration(
                                        color: Color(0XFF5DD949),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                      
                                          Text('actif', style: TextStyle(color: Colors.white, fontSize: 10),),
                                          Text('340', style: TextStyle(color: Colors.white, fontSize: 10),),
                                        ],),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      width: width*0.18,
                                      decoration: BoxDecoration(
                                        color: Color(0XFFFF0000),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                      
                                          Text('inactif', style: TextStyle(color: Colors.white, fontSize: 10),),
                                          Text('5', style: TextStyle(color: Colors.white, fontSize: 10),),
                                        ],),
                                    ),
                                    
                                  ],
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                              BoxShadow(
                                color:Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 3.84,
                                offset: const Offset(0, 2), 
                              ),],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              //border: Border.all(color: Color(0XFFff7900)),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Container( 
                        
                      )
            ],
            )
        ),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}