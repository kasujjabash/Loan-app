import 'package:flutter/material.dart';

class MyElement extends StatelessWidget {
  final String headLine;
  final String description;
  const MyElement({
    super.key,
    required this.headLine,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
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

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //leading text
                      Text(
                        headLine,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      // add some spacer
                      // const Spacer(),
                      //discription
                      Text(
                        description,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //amount
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/apply'),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Apply",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Another element with an icon at the end, 

// class IconElemnt extends StatelessWidget {
//   final String headLine;
//   final String description;
//   final String amount;
//   const IconElemnt(
//       {super.key,
//       required this.headLine,
//       required this.description,
//       required this.amount});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 //image
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.asset(
//                     'lib/images/image_12.jpg',
//                     height: 50,
//                   ),
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       //leading text
//                       Text(
//                         headLine,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                       // add some spacer
//                       // const Spacer(),
//                       //discription
//                       Text(
//                         description,
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),

//             //amount
//             Text(
//               amount,
//               style: TextStyle(fontSize: 16),
//             )
//           ],
//         ),
//       ),
//     );
//     ;
//   }
// }
