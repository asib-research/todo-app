import 'package:flutter/material.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Todo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: _titleTEController,
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText:  'Title',
                  labelText: 'Title'
                ),
                validator: (String? value){
                  if(value!.trim().isEmpty??true){
                    return 'Title can\' be empty';
                  }
                  return null;
                },
              ),

             const SizedBox(height: 16,),

              TextFormField(
                controller: _descriptionTEController,
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                maxLength: 200,
                decoration: const InputDecoration(
                    hintText: 'Description',
                    labelText: 'Description'
                ),
                validator: (String? value){
                  if(value!.trim().isEmpty??true){
                    return 'Description can\' be empty';
                  }
                  return null;
                },
              ),

             const SizedBox(height: 20,),

              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  Navigator.pop(context);
                }
              }, child: const Text("Add"))


            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
