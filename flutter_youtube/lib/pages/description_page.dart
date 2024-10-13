import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.dangerous)),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Snackbar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDouble10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              const SizedBox(
                height: kDouble10,
              ),
              Wrap(
                spacing: kDouble20,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 20;
                      });
                    },
                    child: const Text('Small title'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 35;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent.shade400,
                        foregroundColor: Colors.black),
                    child: const Text('Medium title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    child: const Text('Large Title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 200;
                      });
                    },
                    child: const Text('Huge Title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                baconDescription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10),
              const Text(
                baconDescription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10)
            ],
          ),
        ),
      ),
    );
  }
}
