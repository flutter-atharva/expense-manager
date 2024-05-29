//import 'dart:js_util';

import 'package:expense_manager/graphs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  Future deleteDilogue() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Delete Category",
              textAlign: TextAlign.center,
            ),
            content: Text(
              "Are you sure you want to delete the selected category?",
              textAlign: TextAlign.center,
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(140, 128, 128, 0.2),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.black),
                  ),
                ),
              )
            ],
          );
        });
  }

  void showBottomSheet() {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Add",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Image URL",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Category",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
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
                ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ));
          }
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 0, crossAxisSpacing: 0, childAspectRatio: 1),
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onLongPress: () {
                deleteDilogue();
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: const [
                  BoxShadow(offset: Offset(1, 2), blurRadius: 8, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/food.png",
                        fit: BoxFit.fill,
                        height: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Food",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onLongPress: () {
                deleteDilogue();
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: const [
                  BoxShadow(offset: Offset(1, 2), blurRadius: 8, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/fuel.png",
                        fit: BoxFit.fill,
                        height: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Fuel",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onLongPress: () {
                deleteDilogue();
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: const [
                  BoxShadow(offset: Offset(1, 2), blurRadius: 8, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/medicines.png",
                        fit: BoxFit.fill,
                        height: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Medicine",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onLongPress: () {
                deleteDilogue();
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: const [
                  BoxShadow(offset: Offset(1, 2), blurRadius: 8, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/shopping.png",
                        fit: BoxFit.fill,
                        height: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Shopping",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          showBottomSheet();
        },
        child: Container(
          width: 170,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(70), color: Colors.white, boxShadow: const [
            BoxShadow(offset: Offset(0, 4), blurRadius: 4, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.25))
          ]),
          child: Row(
            children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.add_circle,
                color: Color.fromRGBO(14, 161, 125, 1),
                size: 45,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "Add Category",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
