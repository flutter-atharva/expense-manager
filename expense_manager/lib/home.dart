import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return TextField();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromRGBO(33, 33, 33, 1)),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined, color: Color.fromRGBO(33, 33, 33, 1)))
        ],
        leading: IconButton(icon: Icon(Icons.menu_outlined), onPressed: () {}, color: Color.fromRGBO(33, 33, 33, 1)),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
      ),
      body: Container(
        //height: 110,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/medicines.png",
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 233,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Medicines",
                                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text("ojkdfoj osdjokeo jsmbmkv mdmj", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              "assets/images/subtract.png",
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("500", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(alignment: Alignment.centerRight, width: double.infinity, child: Text("3 june | 11:50 AM", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, color: Color.fromRGBO(0, 0, 0, 0.6)))),
            ),
            Divider(
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/medicines.png",
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 233,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Medicines",
                                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text("ojkdfoj osdjokeo jsmbmkv mdmj", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              "assets/images/subtract.png",
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("500", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(alignment: Alignment.centerRight, width: double.infinity, child: Text("3 june | 11:50 AM", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, color: Color.fromRGBO(0, 0, 0, 0.6)))),
            ),
            Divider(
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/medicines.png",
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 233,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Medicines",
                                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text("ojkdfoj osdjokeo jsmbmkv mdmj ", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              "assets/images/subtract.png",
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("500", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(alignment: Alignment.centerRight, width: double.infinity, child: Text("3 june | 11:50 AM", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, color: Color.fromRGBO(0, 0, 0, 0.6)))),
            ),
            Divider(
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/medicines.png",
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 233,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Medicines",
                                  style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text("ojkdfoj osdjokeo jsmbmkv mdmj", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              "assets/images/subtract.png",
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("500", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(alignment: Alignment.centerRight, width: double.infinity, child: Text("3 june | 11:50 AM", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, color: Color.fromRGBO(0, 0, 0, 0.6)))),
            ),
            Divider(
              color: Color.fromRGBO(206, 206, 206, 1),
            ),
            Spacer(),
            Container(
              width: 190,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(70), boxShadow: [
                BoxShadow(offset: Offset(0, 4), blurRadius: 4, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.25))
              ]),
              child: ElevatedButton(
                onPressed: () {
                  showBottomSheet();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_rounded,
                      color: Color.fromRGBO(14, 161, 125, 1),
                      size: 36,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Add Transaction",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(37, 37, 37, 2)),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
