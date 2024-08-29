import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("Text Field Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          TextField(
            controller: textEditingController,
            // obscureText: true,
            // obscuringCharacter: '*',
            style: const TextStyle(fontWeight: FontWeight.bold),
            // textAlign: TextAlign.center,
            cursorColor: Colors.amber,
            inputFormatters: [
              TextInputFormatter.withFunction((oldValue, newValue) {
                return TextEditingValue(text: newValue.text.toUpperCase());
              })
            ],
            onChanged: (value) {
              setState(() {
                textEditingController.text = value;
              });
            },
            decoration: InputDecoration(
              hintText: "Please type any text here ",
              hintStyle: TextStyle(
                  color: Colors.grey.shade600, fontWeight: FontWeight.normal),
              // hintMaxLines: 2,
              // labelText: 'Input Text',
              labelStyle: TextStyle(
                  color: Colors.red.shade900, fontWeight: FontWeight.bold),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              label: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.grey.shade900,
                child: Text(
                  'Input Text',
                  style: TextStyle(
                      color: Colors.red.shade100, fontWeight: FontWeight.bold),
                ),
              ),
              helperText: 'This is helper text',
              helperStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold),
              //helperMaxLines: 2,
              counterText: '${textEditingController.text.length} characters',
              counterStyle: TextStyle(
                color: Colors.amber.shade900,
              ),
              counter: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.amber.shade900,
                child: Text(
                  '${textEditingController.text.length} characters',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              // errorText: 'This is error text',
              errorStyle: TextStyle(
                  color: Colors.red.shade900, fontWeight: FontWeight.bold),
              errorMaxLines: 2,
              error: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.red.shade900,
                child: const Text(
                  'This is error text',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              icon: Icon(
                // bisa di masukan ke widget lain kok
                Icons.person,
                color: Colors.amber.shade900,
              ),
              iconColor: Colors.blue.shade900,
              prefixIcon: const Icon(
                Icons.phone,
                // color: Colors.amber.shade900,
              ),
              prefixIconColor: Colors.amber.shade900,
              suffixIcon: const Icon(
                Icons.coffee,
              ),
              suffixIconColor: Colors.amber.shade900,
              // prefixText: 'Name : ',
              // prefixStyle: TextStyle(
              //   color: Colors.amber.shade900,
              //   fontWeight: FontWeight.bold,
              // ),
              prefix: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.amber.shade900,
                child: const Text(
                  'Prefix : ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              // suffixText: 'Suffix',
              // suffixStyle: TextStyle(
              //   color: Colors.amber.shade900,
              //   fontWeight: FontWeight.bold,
              // ),
              suffix: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.amber.shade900,
                child: const Text(
                  'Suffix',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.amber.shade900, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.blueGrey.shade900, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              enabled: true,
              focusedBorder: OutlineInputBorder(
                  gapPadding: 30,
                  borderSide:
                      BorderSide(color: Colors.green.shade900, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink.shade200, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              focusedErrorBorder: OutlineInputBorder(
                  gapPadding: 30,
                  borderSide: BorderSide(color: Colors.pink.shade400, width: 2),
                  borderRadius: BorderRadius.circular(10)),
            ),

            //plaseholder
          ),
          const SizedBox(height: 20),
          const TextField(),
          Text(
            textEditingController.text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
