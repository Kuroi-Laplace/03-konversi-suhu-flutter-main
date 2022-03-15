import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required TextEditingController inputUser,
  })  : _inputUser = inputUser,
        super(key: key);

  final TextEditingController _inputUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            "Nim: 2031710127",
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            "Nama: Neha Viranica Nauly",
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
          controller: _inputUser,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}