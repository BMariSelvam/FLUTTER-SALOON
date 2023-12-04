import 'package:beauity_saloon/view/printPreviewController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Helper/colors.dart';
import '../helper/appRoute.dart';


// class PosInvoicePrintPreview extends StatelessWidget {
//   const PosInvoicePrintPreview({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final double paperWidth = 10.0 * 25.4; // 3 inches in mm
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Print Preview'),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//         actions: [
//           GestureDetector(
//               onTap: () {
//                 Get.offAllNamed(AppRoutes.dashboardScreen);
//               },
//               child: const Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: 15, vertical: 15),
//                 child: Text(
//                   "cancel",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ))
//
//           // Text("Logout")
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Container(
//             width: paperWidth,
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Appxperts Enterprise Solutions',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10.0),
//                 const Text(
//                   '123 Main Street, Cityville',
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 const Text(
//                   'Phone: 123-456-7890',
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(height: 20.0),
//                 Divider(thickness: 2.0),
//                 SizedBox(height: 20.0),
//                 const Row(
//                   children: [
//                     Text(
//                       'Invoice Date       : ',
//                       style: TextStyle(
//                           fontSize: 15.0, fontWeight: FontWeight.bold),
//                     ),
//                     Expanded(
//                       child: Text(
//                         ' Oct 15, 2023',
//                         style: TextStyle(
//                             fontSize: 15.0, fontWeight: FontWeight.normal),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10.0),
//                 const Row(
//                   children: [
//                     Text(
//                       'Invoice Number : ',
//                       style: TextStyle(
//                           fontSize: 15.0, fontWeight: FontWeight.bold),
//                     ),
//                     Expanded(
//                       child: Text(
//                         ' INV-123456',
//                         style: TextStyle(
//                             fontSize: 15.0, fontWeight: FontWeight.normal),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10.0),
//                 const Divider(thickness: 2.0),
//                 const SizedBox(height: 10.0),
//                 // Table view for items
//                 // buildItemTableView(),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                   child: Table(
//                     columnWidths: const {
//                       0: FixedColumnWidth(40),
//                       1: FixedColumnWidth(70),
//                       2: FixedColumnWidth(30),
//                       3: FixedColumnWidth(60),
//                       4: FixedColumnWidth(50),
//                     },
//                     children: const [
//                       TableRow(children: [
//                         Text(
//                           'S.No',
//                           style: TextStyle(
//                               fontSize: 15,
//                               color: MyColors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Product',
//                           style: TextStyle(
//                               fontSize: 15,
//                               color: MyColors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               'Qty',
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: MyColors.black,
//                                   fontWeight: FontWeight.bold),
//                             )),
//                         Padding(
//                           padding: EdgeInsets.only(left: 0),
//                           child: Text(
//                             'Price',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: MyColors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: 10),
//                           child: Text(
//                             'Total',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: MyColors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ])
//                     ],
//                   ),
//                 ),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: const ScrollPhysics(),
//                   itemCount: 2,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 0),
//                       child: Table(
//                         defaultVerticalAlignment:
//                         TableCellVerticalAlignment.middle,
//                         columnWidths: const {
//                           0: FixedColumnWidth(40),
//                           1: FixedColumnWidth(70),
//                           2: FixedColumnWidth(20),
//                           3: FixedColumnWidth(60),
//                           4: FixedColumnWidth(50),
//                         },
//                         children: [
//                           TableRow(children: [
//                             // color: Colors.lightBlue,
//                             Padding(
//                               padding: const EdgeInsets.only(left: 6),
//                               child: Text("${index + 1}"),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 0),
//                               child: Text("qwertyui",
//                                 style: TextStyle(fontSize: 14),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 5),
//                               child: Text(
//                                   "3"),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8),
//                               child: Text(
//                                   "₹100"),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 10),
//                               child: Text("₹ 100"),
//                             ),
//                           ]),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//
//                 const SizedBox(height: 10.0),
//                 const Divider(thickness: 2.0),
//                 const SizedBox(height: 10.0),
//                 // Total
//                 buildTotalRow('Subtotal', 50.0),
//                 buildTotalRow('Tax (10%)', 5.0),
//                 const SizedBox(height: 20.0),
//                 const Divider(thickness: 2.0),
//                 const SizedBox(height: 20.0),
//                 // Grand total
//                 buildTotalRow('Grand Total', 55.0, fontWeight: FontWeight.bold),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildItemTableView() {
//     return DataTable(
//       columnSpacing: 10.0,
//       columns: [
//         DataColumn(
//           label: Container(
//             // Set the width to 0.0 or omit it
//             child: Text('Sno'),
//           ),
//         ),
//         DataColumn(
//           label: Container(
//             width: 50,
//             child: Text('Product \nName'),
//             margin: EdgeInsets.symmetric(
//                 horizontal: 5.0), // Adjust the margin as needed
//           ),
//         ),
//         DataColumn(
//           label: Container(
//             child: Text('Qty'),
//             margin: EdgeInsets.symmetric(
//                 horizontal: 5.0), // Adjust the margin as needed
//           ),
//         ),
//         DataColumn(
//           label: Container(
//             child: Text('Price'),
//             margin: EdgeInsets.symmetric(
//                 horizontal: 5.0), // Adjust the margin as needed
//           ),
//         ),
//         DataColumn(
//           label: Container(
//             child: Text('Total'),
//             margin: EdgeInsets.symmetric(
//                 horizontal: 5.0), // Adjust the margin as needed
//           ),
//         ),
//       ],
//       rows: [
//         buildItemDataRow('1', 'Item 1', 1, 10.0),
//         buildItemDataRow('2', 'Item 2', 2, 15.0),
//         buildItemDataRow('3', 'Item 3', 3, 20.0),
//         // Add more rows as needed
//       ],
//     );
//   }
//
//   DataRow buildItemDataRow(
//       String sno, String itemName, int quantity, double price) {
//     double total = quantity * price;
//     return DataRow(cells: [
//       DataCell(Text(sno)),
//       DataCell(Text(itemName)),
//       DataCell(Text(quantity.toString())),
//       DataCell(Text('\$$price')),
//       DataCell(Text('\$$total')),
//     ]);
//   }
//
//   Widget buildTotalRow(String label, double amount,
//       {FontWeight fontWeight = FontWeight.normal}) {
//     return Padding(
//         padding: EdgeInsets.symmetric(vertical: 5.0),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(label, style: TextStyle(fontSize: 18.0, fontWeight: fontWeight)),
//               Text('\$$amount',
//                   style: TextStyle(fontSize: 18.0, fontWeight: fontWeight)),
//             ],
//             ),
//         );
//     }
// }


class PosInvoicePrintPreview extends StatefulWidget {
  const PosInvoicePrintPreview({Key? key}) : super(key: key);

  @override
  State<PosInvoicePrintPreview> createState() => _PosInvoicePrintPreviewState();
}

class _PosInvoicePrintPreviewState extends State<PosInvoicePrintPreview> {

  late PrintController controller;
  String? orderNmber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(PrintController());
    orderNmber =  Get.arguments as String;
    print("orderNmber");
    print(orderNmber);
    controller.fetchData();
    controller.getSubCategoryList(orderNmber);
  }

  @override
  Widget build(BuildContext context) {
    final double paperWidth = 10.0 * 25.4; // 3 inches in mm
    return GetBuilder<PrintController>(builder: (logic) {
      if (logic.isLoading.value == true) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      return Scaffold(
        appBar: AppBar(
          title: const Text('Print Preview'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            GestureDetector(
                onTap: () {
                  Get.offAllNamed(AppRoutes.dashboardScreen);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: 15),
                  child: Text(
                    "colse",
                    style: TextStyle(fontSize: 20),
                  ),
                ))

            // Text("Logout")
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: paperWidth,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                    '${controller.orgdetailsModel.first.name}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                   Container(
                     width: 150,
                     // color: Colors.green,
                     child: Center(
                       child: Column(
                         children: [
                           Text(
                            '${controller.orgdetailsModel.first.addressLine1}, ${controller.orgdetailsModel.first.addressLine2}, ${controller.orgdetailsModel.first.addressLine3}, ${controller.orgdetailsModel.first.countryName}',
                            style: TextStyle(fontSize: 16.0),
                  ),
                           Text('${controller.orgdetailsModel.first.postalCode}')
                         ],
                       ),
                     ),
                   ),
                   Text(
                    'Phone: ${controller.orgdetailsModel.first.phone}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'mobile: ${controller.orgdetailsModel.first.mobile}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 5.0),
                  Divider(thickness: 2.0),
                  SizedBox(height: 5.0),
                  Text(
                    'BusinessRegNo: ${controller.orgdetailsModel.first.businessRegNo}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'TaxRegNo: ${controller.orgdetailsModel.first.taxRegNo}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 5.0),
                  Divider(thickness: 2.0),
                  SizedBox(height: 5.0),
                   Row(
                    children: [
                      Text(
                        'Invoice Date       : ',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                          '${controller.orderDate}',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                   Row(
                    children: [
                      Text(
                        'Invoice Number : ',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                          '${controller.payModeModel.first.orderNo}',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Divider(thickness: 2.0),
                  const SizedBox(height: 10.0),
                  // Table view for items
                  // buildItemTableView(),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 0),
                    child: Table(
                      columnWidths: const {
                        0: FixedColumnWidth(40),
                        1: FixedColumnWidth(70),
                        2: FixedColumnWidth(30),
                        3: FixedColumnWidth(60),
                        4: FixedColumnWidth(50),
                      },
                      children: const [
                        TableRow(children: [
                          Text(
                            'S.No',
                            style: TextStyle(
                                fontSize: 15,
                                color: MyColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Product',
                            style: TextStyle(
                                fontSize: 15,
                                color: MyColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Qty',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: MyColors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Price',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: MyColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: MyColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: controller.payModeModel.first.pOSInvoiceDetail?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Table(
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                          columnWidths: const {
                            0: FixedColumnWidth(40),
                            1: FixedColumnWidth(70),
                            2: FixedColumnWidth(20),
                            3: FixedColumnWidth(60),
                            4: FixedColumnWidth(50),
                          },
                          children: [
                            TableRow(children: [
                              // color: Colors.lightBlue,
                              Padding(
                                padding:  EdgeInsets.only(left: 6),
                                child: Text("${controller.payModeModel.first.pOSInvoiceDetail?[index].slNo}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Text("${controller.payModeModel.first.pOSInvoiceDetail?[index].productName}",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("${controller.payModeModel.first.pOSInvoiceDetail?[index].qty}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text("${controller.payModeModel.first.pOSInvoiceDetail?[index].price}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("${controller.payModeModel.first.pOSInvoiceDetail?[index].total}"),
                              ),
                            ]),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10.0),
                  const Divider(thickness: 2.0),
                  const SizedBox(height: 10.0),
                  // Total
                  buildTotalRow('Subtotal', controller.payModeModel.first.subTotal),
                  buildTotalRow('Tax (${controller.payModeModel.first.taxPerc ?? "8"}%)', controller.payModeModel.first.tax),
                  const SizedBox(height: 20.0),
                  const Divider(thickness: 2.0),
                  const SizedBox(height: 20.0),
                  // Grand total
                  buildTotalRow(
                      'Grand Total', controller.payModeModel.first.netTotal, fontWeight: FontWeight.bold),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
  Widget buildTotalRow(String label, double? amount,
      {FontWeight fontWeight = FontWeight.normal}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 18.0, fontWeight: fontWeight)),
          Text('\$$amount',
              style: TextStyle(fontSize: 18.0, fontWeight: fontWeight)),
        ],
      ),
    );
  }
}
