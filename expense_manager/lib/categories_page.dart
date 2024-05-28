import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column();
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
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 0, crossAxisSpacing: 0, childAspectRatio: 1),
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
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
          Padding(
            padding: const EdgeInsets.all(15),
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
          Padding(
            padding: const EdgeInsets.all(15),
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
          Padding(
            padding: const EdgeInsets.all(15),
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
            BoxShadow(offset: Offset(0, 4), blurRadius: 4, spreadRadius: 4, color: Color.fromRGBO(0, 0, 0, 0.25))
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
    );
  }
}
