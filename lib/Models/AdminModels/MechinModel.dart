class MechineModel {
  const MechineModel(
      this.typeOfMechine, this.available, this.timeofDelevery, this.requestBy);
  final String typeOfMechine;
  final bool available;
  final String requestBy;
  final DateTime timeofDelevery;
}

final mechineList = [
  MechineModel('EyeMechine', true, DateTime.now(), 'Dr kapil'),
  MechineModel('EearMechine', false, DateTime.now(), 'Dr suhail'),
  MechineModel('EyeMechine', true, DateTime.now(), 'Dr kalpana')
];

class PaymentModel {
  const PaymentModel(this.payment, this.isPending, this.timeofPayment,
      this.paymentType, this.typeOfMechine, this.sender);
  final String payment;
  final String sender;
  final bool isPending;
  final String paymentType;
  final DateTime timeofPayment;
  final String typeOfMechine;
}

final paymentList = [
  PaymentModel('12k', false, DateTime.now(), 'UPI', '65551', 'Dr Kapil'),
  PaymentModel('18k', true, DateTime.now(), 'BANK', '65558', 'Sadik eng'),
  PaymentModel('12k', false, DateTime.now(), 'UPI', '65571', 'Huzaifa'),
  PaymentModel('14k', true, DateTime.now(), 'BANK', '65554', 'Dr Kalpana'),
  PaymentModel('12k', false, DateTime.now(), 'UPI', '65571', 'Dr Suhail'),
  PaymentModel('17k', false, DateTime.now(), 'BANK', '65541', 'Dr kapoor'),
];

class Mechine {
  const Mechine(
    this.used,
    this.isOk,
    this.mechineCode,
    this.imagePath,
    this.name,
  );
  final String used;
  final String name;
  final String mechineCode;
  final bool isOk;
  final String imagePath;
  //
}

const list = [
  Mechine('12', true, '65554', 'assets/images/mechine (1).png', 'SMD'),
  Mechine('15', true, '65554', 'assets/images/mechine (2).png', 'DFF'),
  Mechine('100', false, '65554', 'assets/images/mechine (3).png', 'TBB'),
  Mechine('12', true, '65554', 'assets/images/mechine (2).png', 'DFF'),
  Mechine('12', true, '65554', 'assets/images/mechine (3).png', 'TBB'),
  Mechine('12', true, '65554', 'assets/images/mechine (1).png', 'SMD'),
];
