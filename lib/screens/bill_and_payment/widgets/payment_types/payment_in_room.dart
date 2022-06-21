import 'package:flutter/material.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/waiting_payment_widget.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../controllers/bill_and_payment_controller.dart';

class PaymentInRoom extends StatefulWidget {

  const PaymentInRoom({Key? key}) : super(key: key);

  @override
  _PaymentInRoomState createState() => _PaymentInRoomState();
}

class _PaymentInRoomState extends State<PaymentInRoom> {

  int? _value = 0;

  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  Widget _paymentByMoney (BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          SizedBox(
            height: 40,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Thanh toán bằng tiền mặt",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Xin quý khách chờ tại phòng. Nhân viên Hồng Ngọc sẽ qua"
                    " phòng và thanh toán cho quý khách trong giây lát.",  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ))
            ),
          ),
        ],
      ),
    );
  }

  Widget _paymentByCredit (BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          SizedBox(
            height: 40,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Chọn hình thức thanh toán",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Xin quý khách chờ tại phòng. Nhân viên Hồng Ngọc sẽ qua"
                    " phòng và thanh toán cho quý khách trong giây lát.",  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ))
            ),
          ),
        ],
      ),
    );
  }

  Widget _paymentByDigitalWallet (BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 40,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Thanh toán bằng ví điện tử",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 55,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      controller.setSelectedDigitalWallet(0);
                    },
                    child: Container(
                      decoration: controller.selectedDigitalWallet.value == 0 ? BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.secondary,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondaryVariant,
                              width: 4
                          )
                      ) : BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Image.asset("assets/img/momo_logo.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      controller.setSelectedDigitalWallet(1);
                    },
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: controller.selectedDigitalWallet.value == 1 ? BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondaryVariant,
                              width: 4
                          )
                      ): BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                      ),
                      child: SizedBox(
                        height: 40,
                        width: 80,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.center,
                          child: Image.asset("assets/img/vnpay.png",
                              fit: BoxFit.contain,
                              width: 100),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: controller.selectedDigitalWallet.value == 0 ? Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondary
                    ),
                    width: 180,
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: Image.asset("assets/img/momo_logo.png"),
                        ),
                        Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 15.0),
                              padding: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: QrImage(
                                data: 'This QR code has an embedded image as well',
                                version: QrVersions.auto,
                                size: 320,
                                gapless: false,
                                embeddedImage: const AssetImage('assets/images/my_embedded_image.png'),
                                embeddedImageStyle: QrEmbeddedImageStyle(
                                  size: const Size(80, 80),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ) : Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    width: 180,
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: Container(
                              height: double.infinity,
                              alignment: Alignment.center,
                              child: Image.asset("assets/img/vnpay.png",
                                  fit: BoxFit.contain,
                                  width: 100),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 15.0),
                              padding: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: QrImage(
                                data: 'This QR code has an embedded image as well',
                                version: QrVersions.auto,
                                size: 320,
                                gapless: false,
                                embeddedImage: const AssetImage('assets/images/my_embedded_image.png'),
                                embeddedImageStyle: QrEmbeddedImageStyle(
                                  size: const Size(80, 80),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              )
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            child: IconButton(
                              padding: const EdgeInsets.all(0.0),
                              icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.black),
                              tooltip: 'Increase',
                              onPressed: () {
                              },
                            )
                        ),
                        const SizedBox(
                          height: 40,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Quay lại", style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const SizedBox(
                      height: 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Tiếp", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  
  Widget _paymentSelection () {
    return SizedBox(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Chọn hình thức thanh toán",  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
            Expanded(
                child: Obx(() => ListView.builder(
                    itemCount: controller.payments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        height: 60,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            controller.setSelectedPayment(index);
                            setState(() {
                              _value = index;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).colorScheme.onSurface
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                  child: Radio(
                                    value: index,
                                    groupValue: _value,
                                    fillColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                          return Theme.of(context).colorScheme.secondary;
                                        }),
                                    onChanged: (int? value) {
                                      controller.setSelectedPayment(value!);
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                      controller.payments[index].paymentTypeName!
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextButton(
                      onPressed: () async {
                      },
                      child: const SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Xác nhận", style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.orderBillStatus.value.paymentTypeRequestedInRoom == "Tại phòng" ? _paymentSelection() :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CASH" ? const WaitingPaymentWidget(title: 'tiền mặt',) :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CREDIT" ? const WaitingPaymentWidget(title: 'thẻ') :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "MOMO" ? const WaitingPaymentWidget(title: 'Ví điện tử MoMo') :
    const WaitingPaymentWidget(title: 'Ví điện tử VnPay'));
  }
}