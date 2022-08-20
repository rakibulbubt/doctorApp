import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:math' as math;

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,


        appBar: AppBar(

          toolbarHeight: 67,
          leading: IconButton(
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios)),
          title:  Text(
            "APPOINTMENT",
            style: GoogleFonts.ebGaramond(
              letterSpacing: 1,
              fontSize: 18,
              fontWeight: FontWeight.bold,

              color: Colors.white,
            ),
          ),
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: HexColor("#07919d"),
          actions: [
            IconButton(
              onPressed: () {},
              icon:  Icon(Icons.info_outline),
              color: Colors.white,
            )
          ],
        ),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 5.0),
          child: Column(children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 2, horizontal: 0),
              child: Container(
                color: Colors.white,
                height: size.height * 0.16,
                child: Row(children: [
                   Padding(
                    padding: EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=2000"),
                    ),
                  ),
                   SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wade Warren",
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Text(
                          "General Practitionar",
                          style: GoogleFonts.inconsolata(
                          fontWeight: FontWeight.w700
                          ,
                              letterSpacing: 1,
                              fontSize: 16, color: Colors.blueGrey),
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                                "https://flyclipart.com/thumb2/work-experience-experience-layout-icon-with-png-and-vector-741286.png"),
                          ),
                          SizedBox(width: 4),
                          Text(
                            " 3 years",
                            style: GoogleFonts.prompt(fontSize: 14, color: Colors.blueGrey),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                                "https://png.pngtree.com/png-clipart/20190902/original/pngtree-cartoon-pink-love-material-png-image_4383180.jpg"),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            " 92%",
                            style: GoogleFonts.prompt(fontSize: 14, color: Colors.blueGrey),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Container(
                color: Colors.white,
                padding:  EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Total const", style: GoogleFonts.cabin(
                fontWeight: FontWeight.w600
                ),
                      ),
                      subtitle: Text("Session fee for 30 minutes" ,style: GoogleFonts.inconsolata(
                          fontWeight: FontWeight.bold
                      ),),
                      trailing: Text("\$ 80" , style: GoogleFonts.cabin(
                          fontWeight: FontWeight.bold
                      )),
                    ),
                    ListTile(
                      title: Text("To Pay", style: GoogleFonts.cabin(
                        fontWeight: FontWeight.w600
                      )),
                      trailing: Text("\$ 80", style: GoogleFonts.cabin(
                      fontWeight: FontWeight.bold
                      )),
                    ),
                    Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 8,
                        thickness: 1.5,
                        color: Colors.grey.shade300),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.ac_unit, size: 30, color: HexColor("#098e9c"),),
                              Text("Use Promo Code", style: GoogleFonts.prompt(
                                fontSize: 17,
                                fontWeight: FontWeight.w500
                              ),),
                              Transform.rotate(
                                  angle: 180 * math.pi / 180,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_back_ios_sharp)))

                            ],
                          ),
                        ),
                        height: 50,
                        // width: 300,
                        decoration: BoxDecoration(
                          color: HexColor("#ecf3fc"),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            


            Padding(
              padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Container(
                color: Colors.white,
                padding:  EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(left: 20, bottom: 15),
                      child: Text("Payment Option", style: GoogleFonts.prompt(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600
                      ),),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1
                          )
                        ),

                        child:
                      Column(
                        children: [
                          RadioListTile(onChanged: (value) {
                            setState(() {
                              selectedValue = 0;
                            });

                          }, groupValue: selectedValue, value: 0,
                            title:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Paypal", style: GoogleFonts.ebGaramond(
                                    fontSize: 15, fontWeight: FontWeight.bold
                                ),),
                                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT2-Ed_FOZh5UVy6f4YHqp7-MgL6_Et8UUWg&usqp=CAU", height: 40,)
                              ],
                            ),

                          ),
                          Divider(
                            height: 3,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          RadioListTile(onChanged: (value) {
                            setState(() {
                              selectedValue = 1;
                            });

                          }, groupValue: selectedValue, value: 1,
                            title:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Credit Card", style: GoogleFonts.ebGaramond(
                                    fontSize: 15, fontWeight: FontWeight.bold
                                ),),
                                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEUm_0q1HQ05jilyaDo2tqh4eEUJmIYupd4g&usqp=CAU", height: 30,)
                              ],
                            ),

                          ),
                        ],
                      )
                      ),
                    ),

                  ],
                ),
              ),
            ),


            SizedBox(height: 10,),
            Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("#fd8311"),

                      borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],),

                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(
                      "Pay & Confirm",
                        style: GoogleFonts.prompt(
                          color: HexColor("#fce1c9"),
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        )),
                  ],),
                )),
            SizedBox(height: 2,),
            Divider(
                indent: 150,
                endIndent: 150,
                height: 20,
                thickness: 5,
                color: Colors.black26),
          ]),
        ),
      ),
    );
  }
}
