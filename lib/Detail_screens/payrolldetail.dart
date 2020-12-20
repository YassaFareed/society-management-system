
import 'package:flutter/material.dart';
import 'package:societyworker/services/workerpayroll.dart';
import 'package:societyworker/widgets/Columnwidget.dart';
import 'package:societyworker/services/auth_service.dart';

class payrollWorker extends StatefulWidget {
  @override
  _payrollWorkerState createState() => _payrollWorkerState();
}

List payroll;
class _payrollWorkerState extends State<payrollWorker> {

/*

  @override

  void initState() {
    super.initState();
    PayrollService().getWorkerPayroll();

  }
*/

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
       body:ColoumnWidget(totalPresent:payroll[0]['totalPresent']??"",totalAbsent:payroll[0]['totalAbsent']??"",name:payroll[0]['name'],basicSalary:payroll[0]['basicSalary'],workerId: payroll[0]['workerId'],bonus: payroll[0]['bonus'],deductionsPerAbsent:payroll[0]['deductionsPerAbsent'],totalDeductions: payroll[0]['totalDeductions'], totalIncome:payroll[0]['totalIncome'],objId: payroll[0]['_id'])

      );

  }
}
