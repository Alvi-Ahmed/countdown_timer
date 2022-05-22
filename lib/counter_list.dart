import 'package:date_time_picker/date_time_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CounterList extends StatefulWidget {
  CounterList({Key? key}) : super(key: key);

  @override
  State<CounterList> createState() => _CounterListState();
}

Widget myWidget(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: Center(
              child: SizedBox(
                height: 80,
                width: 80,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    const CircularProgressIndicator(
                      value: 20 / 60,
                      strokeWidth: 12,
                    ),
                    DottedBorder(
                      borderType: BorderType.Circle,
                      color: Colors.white,
                      radius: const Radius.circular(120),
                      padding: const EdgeInsets.all(0),
                      strokeWidth: 12,
                      dashPattern: const [12, 7],
                      child: const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(120)),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          // color: Colors.amber,
                        ),
                      ),
                    ),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('60',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ],
                    )),
                  ],
                ),
              ),
            ),
          );
        }),
  );
}

class _CounterListState extends State<CounterList> {
  createDialoguebox(BuildContext context) {
    TextEditingController title = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Event Date and Time"),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("EventName"),
                  TextField(
                    controller: title,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                  ),
                  DateTimePicker(
                    type: DateTimePickerType.dateTime,
                    use24HourFormat: false,
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Date',
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Submit"))),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: GestureDetector(
            onTap: () {
              createDialoguebox(context);
            },
            child: const Icon(Icons.add)),
        body: SafeArea(child: myWidget(context)));
  }
}
