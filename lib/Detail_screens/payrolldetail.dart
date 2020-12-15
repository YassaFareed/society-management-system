
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:societyworker/services/workerpayroll.dart';
import 'package:societyworker/widgets/Columnwidget.dart';

class payrollWorker extends StatefulWidget {
  @override
  _payrollWorkerState createState() => _payrollWorkerState();
}

List payroll;
class _payrollWorkerState extends State<payrollWorker> {



  @override

  void initState() {
    super.initState();
    PayrollService().getWorkerPayroll();
    print("HELO THIS IS INIT PAYROLL");
    print(payroll);

/*

    List<PieChartSectionData> _sections = List<PieChartSectionData>();
    int absent =5;
    int present =20;



    PieChartSectionData _item1 = PieChartSectionData(
      color: Colors.green,
      value: present.toDouble(),
      title: 'Present',
      radius: 50,
      titleStyle:TextStyle(color: Colors.white,fontSize:20),
    );

    PieChartSectionData _item2 = PieChartSectionData(
      color: Colors.redAccent,
      value: absent.toDouble(),
      title: 'Absent',
      radius: 50,
      titlePositionPercentageOffset: 0.5,
      titleStyle:TextStyle(color: Colors.white,fontSize:20),

    );
    _sections=[_item1,_item2]*/
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemCount: payroll.length==0 ?1: payroll.length,
          itemBuilder: (context , index){
            return ColoumnWidget(totalPresent:payroll[index]['totalPresent'],totalAbsent:payroll[index]['totalAbsent'],name:payroll[index]['name'],basicSalary:payroll[index]['basicSalary'],workerId: payroll[index]['workerId'],bonus: payroll[index]['bonus'],deductionsPerAbsent:payroll[index]['deductionsPerAbsent'],totalDeductions: payroll[index]['totalDeductions'], totalIncome:payroll[index]['totalIncome'],objId: payroll[index]['_id'],);
          }

      ),

    );
   // payroll['totalPresent']
   // return ColoumnWidget(totalPresent:500,totalAbsent:2,name:"hassan",basicSalary:500,workerId:"213123",bonus: 500,deductionsPerAbsent:2222,totalDeductions: 2200, totalIncome:500,objId:"2313",);
 /* return Scaffold(
    body:Container(
        child:Text(
            payroll[0]['totalPresent']
        ),
    ),
  );

*/

  }
}
