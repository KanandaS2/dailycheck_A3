// import 'package:flutter/material.dart';
// import '../../core/app_export.dart';
// import './personalizados/estiloBotao.dart';
// import '../../widgets/custom_elevated_button.dart';

// class Inicio extends StatelessWidget {
//   const Inicio({Key? key}) : super(
//     key: key,
//   );
// }

// @override
// Widget build(BuildContext context) {
//   return SafeArea(
//     child: Scaffold(
//       body: SingleChildScrollView(
//         child: SizedBox(
//           width: double.maxFinite,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 height: size.height,
//                 width: size.width,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CustomImageView(
//                       imagePath: ImageConstant.imgVector4,
//                       height: 382.h,
//                       width: double.maxFinite,
//                       radius: BorderRadius.circular(15.r),
//                       alignment: Alignment.topCenter,
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgVector3,
//                       height: 328.h,
//                       width: double.maxFinite,
//                       radius: BorderRadius.circular(1.h),
//                       alignment: Alignment.bottomCenter,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 452.h,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CustomImageView(
//                       imagePath: ImageConstant.imgLogoSobreAcac,
//                       height: 452.h,
//                       width: double.maxFinite,
//                     ),
//                     CustomButton(
//                       width: 220.73.w,
//                       margin: getMargin.only(bottom: 111.h),
//                       text: "CONTINUAR",
//                       variant: ButtonVariant.OutlineErrorContainer,
//                       buttonTextStyle: AppStyle.txtNunitoMediumPrimaryContainer,
//                       alignment: Alignment.bottomCenter,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
