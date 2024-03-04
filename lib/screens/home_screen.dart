import 'package:flutter/material.dart';
import 'package:loanapp/componets/home_screen_componets.dart';

class HomeScreen extends StatelessWidget {
  //sign User Out method
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Container(
              //   color: Colors.red,
              //   //main column
              //   child: Column(
              //     //buttons
              //     children: [
              //       Row(
              //         //add money button + add icon
              //         children: [
              //           Icon(Icons.add),
              //           Container(
              //             child: Center(
              //                 child: Text(
              //               'Add Money',
              //               style: TextStyle(fontSize: 30),
              //             )),
              //           )
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                // color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Image.asset(
                  'lib/images/image_1.jpg',
                  fit: BoxFit.cover,
                ),

                // width: MediaQuery.of(context).devicePixelRatio,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 110.0, horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Total balance text and amount
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        //text
                        child: Text('Total Balance:'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),

                        //amount of money
                        child: Text(
                          'UGX: 100,000',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 220.0, horizontal: 20),
                child: Column(
                  children: [
                    // buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          child: const Row(
                            //add money button + add icon and (...)
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Add money',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Transfer button, arrow_outwords and transfer text
                        Container(
                          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Icon(
                                  Icons.arrow_outward,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Transfer',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // (...)
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Text(
                            '...',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Upgrade you card
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              //image
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'lib/images/image_12.jpg',
                                  height: 50,
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //leading text
                                    Text(
                                      'Upgrade you card',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    // add some spacer
                                    // const Spacer(),
                                    //discription
                                    Text(
                                      "View",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // forword arrow
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //A activities + see more text button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'All Activities',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/loanScreen'),
                          child: const Text(
                            "See More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    //  Loans listed
                    const MyElement(
                      headLine: "Student Loan",
                      description: "0.3% Interest",
                    ),

                    const MyElement(
                      headLine: "Business Loan",
                      description: "0.5% Interest",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
