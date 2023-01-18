import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Database/dbmanager.dart';

class FieldScreen extends StatefulWidget {
  const FieldScreen({Key? key}) : super(key: key);

  @override
  _FieldScreenState createState() => _FieldScreenState();
}

class _FieldScreenState extends State<FieldScreen>
    with SingleTickerProviderStateMixin {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _eduDateController = TextEditingController();
  final _schoolNameController = TextEditingController();
  final _degreeNameController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _companydtNameController = TextEditingController();
  final _rollNameController = TextEditingController();
  final _hobbiesController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  TabController? _tabController;

  final DbBuilder dbmanager = DbBuilder();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Resume",
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.green,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                tabs: <Widget>[
                  Text('Genral Information'),
                  Text('Education'),
                  Text('Experience'),
                  Text('Career objective'),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Container(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: new InputDecoration(labelText: 'Name'),
                            controller: _nameController,
                            validator: (val) => val!.isNotEmpty
                                ? null
                                : 'Name Should Not Be empty',
                          ),
                          TextFormField(
                            decoration: new InputDecoration(labelText: 'Email'),
                            controller: _emailController,
                            validator: (val) => val!.isNotEmpty
                                ? null
                                : 'Course Should Not Be empty',
                          ),
                          TextFormField(
                            decoration: new InputDecoration(labelText: 'Phone'),
                            controller: _phoneController,
                            validator: (val) => val!.isNotEmpty
                                ? null
                                : 'Course Should Not Be empty',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                              child: Text("Next"),
                              color: Colors.grey,
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: new InputDecoration(labelText: 'Date'),
                            controller: _eduDateController,
                            validator: (val) => val!.isNotEmpty
                                ? null
                                : 'Name Should Not Be empty',
                          ),
                          TextFormField(
                            decoration:
                                new InputDecoration(labelText: 'School Name'),
                            controller: _schoolNameController,
                            validator: (val) => val!.isNotEmpty
                                ? null
                                : 'Course Should Not Be empty',
                          ),
                          TextFormField(
                            decoration:
                                new InputDecoration(labelText: 'Degree name'),
                            controller: _degreeNameController,
                            validator: (val) => val!.isNotEmpty
                                ? null
                                : 'Course Should Not Be empty',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                              child: Text("Next"),
                              color: Colors.grey,
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Form(key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20,20),
                      child: Column(children: [
                        TextFormField(
                          decoration: new InputDecoration(labelText: 'Company Name'),
                          controller: _companyNameController,
                          validator: (val) =>
                          val!.isNotEmpty ? null : 'Name Should Not Be empty',
                        ),
                        TextFormField(
                          decoration: new InputDecoration(labelText: 'Date'),
                          controller: _companydtNameController,
                          validator: (val) =>
                          val!.isNotEmpty ? null : 'Course Should Not Be empty',
                        ),
                        TextFormField(
                          decoration: new InputDecoration(labelText: 'Roll'),
                          controller: _rollNameController,
                          validator: (val) =>
                          val!.isNotEmpty ? null : 'Course Should Not Be empty',
                        ),
                        SizedBox(height: 20,),
                        MaterialButton(child: Text("Next"),color: Colors.grey,onPressed: () {})
                      ],),
                    ),
                  ),
                ),
                Container(
                  child: Form(key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20,20),
                      child: Column(children: [
                        TextFormField(
                          decoration: new InputDecoration(labelText: 'Hobbies'),
                          controller: _hobbiesController,
                          validator: (val) =>
                          val!.isNotEmpty ? null : 'Name Should Not Be empty',
                        ),

                        SizedBox(height: 20,),
                        MaterialButton(child: Text("Next"),color: Colors.grey,onPressed: () {})
                      ],),
                    ),
                  ),
                ),
              ],
            ))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child:  Row(mainAxisSize: MainAxisSize.min,
        children: [
          Text("View Resume"),
          SizedBox(width: 15,),
          Icon(Icons.remove_red_eye)
        ],
        ),
      ),
    );
  }
}
