import 'package:maak/shared/components/Components.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  AddCategory();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              child: Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.00),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        formField(
                            controller: titleController,
                            inputType: TextInputType.text,
                            label: 'Title',
                            icon: Icons.title,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                        formField(
                            controller: descriptionController,
                            inputType: TextInputType.text,
                            label: 'Description',
                            icon: Icons.description,
                            borderType: 'line'),
                        SizedBox(
                          height: 20.00,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    height: 50.00,
                    minWidth: double.infinity,
                    elevation: 1.00,
                    color: Theme.of(context).colorScheme.surface,
                    child: Text('Add'),
                    clipBehavior: Clip.hardEdge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
