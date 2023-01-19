import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homecontroller.dart';

class Home extends GetView<HomeController> {
  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Money exchange")),
      body: Obx(() {
        return (controller.isloading)
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextStyle(controller.lists?.description ?? "", 23,
                            FontWeight.w500),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            customTextStyle(
                                "Latest update: ", 18, FontWeight.w400),
                           dateTime(controller.lists?.timestamp)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: controller.textController,
                          decoration: InputDecoration(
                              hintText: "Enter MMK Value",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        customTextStyle("Today exchange: 1 ${controller.dropDownvalue} = ${controller.lists?.rates["${controller.dropDownvalue}"]} MMK", 16, FontWeight.bold)
                       , SizedBox(
                          height: 20,
                        ),
                        DropdownButton(
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            value: controller.dropDownvalue,
                            items: controller.items.map((items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items));
                            }).toList(),
                            onChanged: (value) {
                              controller.selectedDropDownvalue(value);
                            }),
                        SizedBox(
                          height: 50,
                        ),
                        
                        Row(
                          children: [
                            customTextStyle(
                              "Result :  ", 20, FontWeight.bold),
                            customTextStyle(
                             "${controller.result.toStringAsFixed(3)}  ${controller.dropDownvalue}",18,FontWeight.w600
                            ),
                           
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                 controller.calculating(controller.lists?.rates["${controller.dropDownvalue}"]);
                              }, child: Text("Convert")),
                        ),
                      ]),
                ),
            );
      }),
    );
  }

  Widget customTextStyle(String text, double size, fontweight) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: fontweight),
    );
  }
  Widget dateTime(value){
    int timestamp = int.parse(value);
    var dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return Text(dateTime.toString(),style: TextStyle(fontSize: 16),);

  }
  
  
}
