import 'package:portfolio/screens/experience/model/designation_info_model.dart';

class CompanyInfoModel {
  final String name;
  final String status;
  List<DesignationInfoModel> designations;
  List<String> points;
  bool expanded;

  CompanyInfoModel({
    required this.name,
    required this.status,
    required this.designations,
    required this.points,
    required this.expanded,
  });
}
