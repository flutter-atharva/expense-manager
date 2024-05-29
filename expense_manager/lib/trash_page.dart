import 'package:expense_manager/categories_page.dart';
import 'package:expense_manager/graphs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashPage extends StatefulWidget {
  const TrashPage({super.key});

  @override
  State<TrashPage> createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
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
                        "assets/images/trash_subtract.png",
                        height: 30,
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
                            
                            SizedBox(
                              width: 5,
                            ),
                            Text("500", style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w400))
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
                        "assets/images/trash_subtract.png",
                        height: 30,
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
                                  "Food",
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
                            
                            SizedBox(
                              width: 5,
                            ),
                            Text("500", style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w400))
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
                        "assets/images/trash_subtract.png",
                        height: 30,
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
                                  "Shopping",
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
                        "assets/images/trash_subtract.png",
                        height: 30,
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
                                  "Fuel",
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GraphsPage()));
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TrashPage()));
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