import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            // Container(
            //   height: 50,
            //   child: ListView.builder(
            //       padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            //       shrinkWrap: true,
            //       physics: const ClampingScrollPhysics(),
            //       // itemCount: 20,
            //       itemCount: lstmodel.length,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (BuildContext context, int index) {
            //         return InkWell(
            //           onTap: () {
            //             // NavigatorHelper.openDialog(BookingDetails());
            //           },
            //           child: Padding(
            //             padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            //             child: Text(lstmodel[index].name ?? ""),
            //           ),
            //         );
            //       }),
            // ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 1,
            //   color: Colors.grey,
            // ),
            // Container(
            //   child: Form(
            //     key: _formKey,
            //     child: Padding(
            //       padding: const EdgeInsets.fromLTRB(20,10,20,20),
            //       child: Column(
            //         children: [
            //           TextFormField(
            //             decoration: new InputDecoration(labelText: 'Name'),
            //             controller: _nameController,
            //             validator: (val) =>
            //                 val!.isNotEmpty ? null : 'Name Should Not Be empty',
            //           ),
            //           TextFormField(
            //             decoration: new InputDecoration(labelText: 'Email'),
            //             controller: _emailController,
            //             validator: (val) =>
            //                 val!.isNotEmpty ? null : 'Course Should Not Be empty',
            //           ),
            //           SizedBox(height: 20,),
            //           InkWell(
            //             onTap: () {
            //               setState(() {
            //                 Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => const FieldScreen()),
            //                 );
            //               });
            //             },
            //             child: Container(
            //                 padding: EdgeInsets.all(10),
            //                 decoration: const BoxDecoration(
            //                   color: Colors.blueGrey,
            //                     // borderRadius: Radius.circular(15),
            //                     // boxShadow: [
            //                     //   BoxShadow(
            //                     //     color: Colors.black,
            //                     //     blurRadius: 10.0,
            //                     //     spreadRadius: 0.5,
            //                     //   ),
            //                     // ]
            //                 ),
            //                 child: Center(
            //                   child: const Text(
            //                     "Next",
            //                     style: TextStyle(
            //                         color: Colors.white, fontSize: 16),
            //                   ),
            //                 )),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
