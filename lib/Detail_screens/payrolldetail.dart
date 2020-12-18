
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
    return
      Scaffold(
      body: ColoumnWidget(totalPresent:payroll[0]['totalPresent']??"",totalAbsent:payroll[0]['totalAbsent']??"",name:payroll[0]['name'],basicSalary:payroll[0]['basicSalary'],workerId: payroll[0]['workerId'],bonus: payroll[0]['bonus'],deductionsPerAbsent:payroll[0]['deductionsPerAbsent'],totalDeductions: payroll[0]['totalDeductions'], totalIncome:payroll[0]['totalIncome'],objId: payroll[0]['_id']),
      );
//      ListView.builder(
//          itemCount: payroll.length==0 ?1: payroll.length,
//          itemBuilder: (context , index){
//            return //ColoumnWidget(,);
//         ; }
//
//      ),

    //);
   // payroll['totalPresent']
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
