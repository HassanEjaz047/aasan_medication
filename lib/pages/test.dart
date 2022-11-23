// import 'package:flutter/material.dart';
//
// import '../services/utils/app_text_style.dart';
// import '../services/utils/colors.dart';
//
// class TestScreen extends StatefulWidget {
//   const TestScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }
//
//
//
// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:  SizedBox(
//           width: screenWidth * 0.935,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                   padding: const EdgeInsets.only(left: 5, top: 10),
//                   child:
//                   (model.imageUrl != "")
//                       ? CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 25,
//                       backgroundImage:
//                       NetworkImage(model.imageUrl!))
//                       :
//                   const CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 25,
//                       backgroundImage: AssetImage(
//                           "assets/images/extra/profilePic.png")),),
//                   Expanded(
//                     child:
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15, left: 10),
//                       child: Text(
//                         (model.address == null)
//                             ? ""
//                             : model.address,
//                         style: AppTextStyles.popins(
//                             style: const TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w600)),
//                       ),
//                     ),
//                  ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 5, right: 10),
//                     child: Text(
//                      (model.patientName == null)
//                          ?
//                          :"${ model.patientName}"  ,
//                       style: AppTextStyles.popins(
//                           style: const TextStyle(
//                             fontSize: 12,
//                           )),
//                     ),
//                   ),
//                   Text(
//                    model.serviceName.toString(),
//                     style: AppTextStyles.popins(
//                         style: const TextStyle(
//                             fontSize: 12,
//                             color: AppColors.kDarkColor)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 2, right: 2),
//                     child: Text(
//                       "-",
//                       style: AppTextStyles.popins(
//                           style: const TextStyle(
//                               fontSize: 16,
//                               color: AppColors.kDarkColor)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 0, right: 2),
//                     child: Text(
//                       "${model.price.toString()} PKR",
//                       style: AppTextStyles.popins(
//                           style: const TextStyle(
//                               fontSize: 12,
//                               color: Colors.red)),
//                     ),
//                   ),
//                   Text(
//                     " ~",
//                     style: AppTextStyles.popins(
//                         style: const TextStyle(
//                             fontSize: 16,
//                             color: AppColors.kDarkColor)),
//                   ),
//                   Text(
//                     (position == null)
//                         ? ""
//                         : calculateDistance(
//                         position!.latitude,
//                         position!.longitude,
//                         value.serviceRequest[index]
//                             .latitude,
//                         value.serviceRequest[index]
//                             .longitude)
//                         .toStringAsFixed(1),
//                     style: AppTextStyles.popins(
//                         style: const TextStyle(
//                             fontSize: 12,
//                             color: AppColors.kDarkColor)),
//                   ),
//                   Text(
//                     "km",
//                     style: AppTextStyles.popins(
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.grey.shade600)),
//                   )
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 9),
//                 child: Text(
//                  formattedTime,
//                   style: AppTextStyles.popins(
//                       style: const TextStyle(
//                           fontSize: 9,
//                           color: AppColors.kDarkColor)),
//                 ),
//               )
//             ],
//           ),
//
//         ),
//       ),
//     );
//   }
// }
