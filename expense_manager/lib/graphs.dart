import 'package:expense_manager/categories_page.dart';
import 'package:expense_manager/trash_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphsPage extends StatefulWidget {
  const GraphsPage({super.key});

  @override
  State<GraphsPage> createState() => _GraphsPageState();
}

class _GraphsPageState extends State<GraphsPage> {
  Map<String, double> data = {
    "Food": 20,
    "Movie": 10,
    "Entertainment": 40
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Graphs",
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              PieChart(
                dataMap: data,
                chartType: ChartType.ring,
                ringStrokeWidth: 30,
                chartRadius: 200,
                centerText: "Total",
                centerTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),
                chartValuesOptions: ChartValuesOptions(showChartValues: false, showChartValueBackground: false),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                thickness: 0.1,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Container(
                          height: 60,
                          child: Row(children: [
                            Image.asset("assets/images/food.png"),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              "Food",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                            Spacer(),
                            Icon(
                              Icons.currency_rupee_outlined,
                              size: 17,
                            ),
                            Text(
                              "650",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.navigate_next_outlined,
                              size: 16,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            )
                          ]),
                        ),
                      );
                    }),
              ),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                thickness: 0.1,
              ),
              Padding(

                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 60,
                  child: Row(children: [
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.currency_rupee_outlined,
                      size: 17,
                    ),
                    Text(
                      "2,500",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
              ),
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
