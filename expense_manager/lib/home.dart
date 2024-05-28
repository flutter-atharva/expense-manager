import 'dart:math';

import 'package:expense_manager/categories_page.dart';
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
        isDismissible: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Amount", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15)),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Category", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15)),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Description", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15)),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(offset: Offset(1, 2), blurRadius: 4, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.2))
                    ],
                    color: Color.fromRGBO(14, 161, 125, 1),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Text(
                    "Add",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          );
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
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(Icons.menu_outlined),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              color: Color.fromRGBO(33, 33, 33, 1));
        }),
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
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Expense Manager",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  Text("Saves all your Transactions", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 13))
                ],
              ),
            ),
            Container(
              height: 45,
              width: 200,
              decoration: BoxDecoration(color: Color.fromRGBO(14, 161, 125, 0.15), borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/images/transaction.png",
                    height: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Transaction",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Color.fromRGBO(14, 161, 125, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 200,
              decoration: BoxDecoration(color: Color.fromRGBO(14, 161, 125, 0.15), borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/images/graph.png",
                    height: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Graph",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Color.fromRGBO(14, 161, 125, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
              },
              child: Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(color: Color.fromRGBO(14, 161, 125, 0.15), borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/category.png",
                      height: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Color.fromRGBO(14, 161, 125, 1)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 200,
              decoration: BoxDecoration(color: Color.fromRGBO(14, 161, 125, 0.15), borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/images/trash.png",
                    height: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Trash",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Color.fromRGBO(14, 161, 125, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 200,
              decoration: BoxDecoration(color: Color.fromRGBO(14, 161, 125, 0.15), borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/images/aboutUs.png",
                    height: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "About Us",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Color.fromRGBO(14, 161, 125, 1)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
