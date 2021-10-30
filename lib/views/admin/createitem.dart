import 'package:flutter/material.dart';
import 'package:itelective6/models/items.dart';
import 'package:itelective6/services/item_service.dart';

class CreateItem extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: InkWell(
                    child: Image.asset(
                        'assets/images/nike.png',
                        width: 100,
                    ),
                ),
                backgroundColor: Colors.grey[300],
            ),
            body: const CreateItemForm()
        );
    }
}

class CreateItemForm extends StatefulWidget {
    const CreateItemForm({Key? key}) : super(key: key);

  @override
  CreateItemFormState createState() {
    return CreateItemFormState();
  }
}

class CreateItemFormState extends State<CreateItemForm> {
    final _formKey = GlobalKey<FormState>();

    String name = "";
    String description = "";
    String price = "";
    String photoUrl = "";

    @override
    Widget build(BuildContext context) {
        return Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.only(
                    top: 50,
                    left: 400,
                    right: 400,
                    bottom: 50,
                ),
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: const BorderRadius.all(const Radius.circular(10)),
                    color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                          child: Text(
                          'Create an Item',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'FuturaBold',
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                          validator: (value) {
                              if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                              }
                              return null;
                          },
                          onChanged: (value) {
                              setState(() {
                                  name = value;
                              });
                          },
                          decoration: InputDecoration(
                              hintText: "Name",
                              fillColor: Colors.blueGrey[50],
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                              ),
                          ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                          validator: (value) {
                              if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                              }
                              return null;
                          },
                          onChanged: (value) {
                              setState(() {
                                  description = value;
                              });
                          },
                          decoration: InputDecoration(
                            hintText: "Description",
                            fillColor: Colors.blueGrey[50],
                            labelStyle: TextStyle(fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 30),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                          validator: (value) {
                              if (value == null || value.isEmpty || int.tryParse(value) == null) {
                                  return 'Please enter a number';
                              }
                              return null;
                          },
                          onChanged: (value) {
                              setState(() {
                                  price = value;
                              });
                          },
                          decoration: InputDecoration(
                              hintText: "Price",
                              fillColor: Colors.blueGrey[50],
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                          validator: (value) {
                              if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                              }
                              return null;
                          },
                          onChanged: (value) {
                              setState(() {
                                  photoUrl = value;
                              });
                          },
                          decoration: InputDecoration(
                            hintText: "PhotoUrl",
                            fillColor: Colors.blueGrey[50],
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                              ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                      child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                                var ref = await ItemService().createItem(Item(
                                    id: "0",
                                    name: name,
                                    description: description,
                                    price: price,
                                    photoUrl: photoUrl
                                ));

                                if (ref.id != "") {
                                    Navigator.pop(context);
                                }
                            }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[400],
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Container(
                            width: 400,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Add Item",
                                  style: const TextStyle(
                                  // color: Colors.white,
                                  fontSize: 16,
                                  // height: 1.5,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'FuturaLight',
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            )
        );
    }
}