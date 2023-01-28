import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Pemasukan
                  Row(children: [
                    Container(
                      child: Icon(
                        Icons.download,
                        color: Colors.deepOrange,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PEMASUKAN",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Rp. 1.000.000",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ])
                  ]),

                  // Pengeluaran
                  Row(children: [
                    Container(
                      child: Icon(
                        Icons.upload,
                        color: Colors.deepOrange,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PENGELUARAN",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Rp. 500.000",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ])
                  ])
                ]),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16)),
          ),
        ),

        // Text Transaksi
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 20),
          child: Text("TRANSAKSI",
              style: GoogleFonts.montserrat(
                  color: Colors.deepOrange,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left),
        ),

        // List Transaksi
        Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.deepOrange,
              elevation: 5,
              child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.edit, color: Colors.white),
                    ],
                  ),
                  // title color
                  title: Text("Rp. 100.000",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          // fontSize: 12,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("Coffe Shop",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                  leading: Container(
                    child: Icon(Icons.upload, color: Colors.deepOrange),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ))),
        )
      ],
    )));
  }
}
