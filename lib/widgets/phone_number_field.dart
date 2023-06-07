import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/helper/colors.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({super.key});

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  late TextEditingController _countryCodeController;
  late TextEditingController _phoneNumberController;

  @override
  void initState() {
    _countryCodeController = TextEditingController();
    _countryCodeController.text = "+91";
    _phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
            color: ColorSys.kSecondary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 40,
              child: TextField(
                controller: _countryCodeController,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(4),
                ],
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            const Text(
              "|",
              style: TextStyle(fontSize: 32, color: Colors.grey),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Phone Number",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
