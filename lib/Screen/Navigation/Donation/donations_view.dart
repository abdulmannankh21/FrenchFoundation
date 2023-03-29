import 'package:fafapp/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'donations_controller.dart';
import 'package:flutter_svg/svg.dart';

class DonationScreen extends GetView<DonationsController> {
  @override
  DonationsController controller = Get.put(DonationsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => SafeArea(
          child: Scaffold(
              backgroundColor: AppColors.bgColor,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child:
                                SvgPicture.asset("assets/icons/icon_left.svg")),
                        SizedBox(
                          height: verticalValue(30),
                        ),
                        const Text(
                          "Dons",
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: verticalValue(30),
                        ),
                        const Text(
                          "Renforcez votre pouvoir en renforçant le pouvoir des autres grâce aux dons",
                        ),
                        SizedBox(
                          height: verticalValue(20),
                        ),
                        Container(
                          height: verticalValue(50),
                          decoration: BoxDecoration(
                            color: AppColors.textfieldcolor.withOpacity(0.2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                value: 10,
                                groupValue: controller.selectedRadio.value,
                                onChanged: (val) {
                                  controller.setSelectedRadio(val!);
                                },
                              ),
                              const Text('€ 10'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: verticalValue(10),
                        ),
                        Container(
                          height: verticalValue(50),
                          decoration: BoxDecoration(
                            color: AppColors.textfieldcolor.withOpacity(0.2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                value: 100,
                                groupValue: controller.selectedRadio.value,
                                onChanged: (val) {
                                  controller.setSelectedRadio(val!);
                                },
                              ),
                              const Text('€ 100'),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: controller.selectedRadio.value,
                              onChanged: (val) {
                                controller.setSelectedRadio(val!);
                              },
                            ),
                            Text('Personnalisé'),
                          ],
                        ),
                        Obx(() => controller.selectedRadio.value == 3
                            ? Container(
                                height: verticalValue(50),
                                decoration: BoxDecoration(
                                  color:
                                      AppColors.textfieldcolor.withOpacity(0.2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                child: const Center(
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      hintText: "Enter Amount",
                                      suffixIcon: Icon(Icons.paypal),
                                      hintStyle: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                      border: InputBorder.none,
                                    ),
                                    cursorColor: AppColors.primaryColor,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink()),
                        SizedBox(
                          height: verticalValue(30),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: GestureDetector(
                              // onTap: _.login,
                              child: Container(
                                  height: verticalValue(50),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: AppColors.primaryColor,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Dons',
                                    style: TextStyle(
                                        color: AppColors.bgColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }
}
