
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final double value; 
  final String unite;
  final String date;
  final String icon;
  const CardWidget({
    required this.title,
    required this.value,
    required this.unite,
    required this.date,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: height * 0.165,
      width: width * 0.47,
      decoration: BoxDecoration( 
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color:Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 3.84,
            offset: const Offset(0, 2), 
          ),]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 14),),
          //SizedBox(height: 10,),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: value.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0XFFFF7900)),
                ),
                TextSpan(
                  text: unite,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey[400]),
                ),
              ],
            ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date, style: TextStyle(fontSize: 12),),
              Image.asset(icon, width: 60, height: 60,),
            ],
          ),
          ]
        
      ),
    );
  }
}