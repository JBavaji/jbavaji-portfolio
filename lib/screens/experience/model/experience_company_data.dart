import 'package:portfolio/screens/experience/model/designation_info_model.dart';

import 'company_info_model.dart';

final List<CompanyInfoModel> companyInfoList = [
  CompanyInfoModel(
    name: 'experience.synechron',
    status: 'Pr',
    designations: [
      DesignationInfoModel(
        title: 'experience.designation.lead',
        start: 'experience.lead.start',
        end: 'experience.lead.end',
      ),
      DesignationInfoModel(
        title: 'experience.designation.sr',
        start: 'experience.sr.start',
        end: 'experience.sr.end',
      ),
      DesignationInfoModel(
        title: 'experience.designation.associate',
        start: 'experience.associate.start',
        end: 'experience.associate.end',
      ),
    ],
    points: [
      'experience.synechron.p1',
      'experience.synechron.p2',
      'experience.synechron.p3',
      'experience.synechron.p4',
      'experience.synechron.p5',
      'experience.synechron.p6',
      'experience.synechron.p7',
      'experience.synechron.p8',
    ],
    expanded: false,
  ),
  CompanyInfoModel(
    name: 'experience.icoderz',
    status: 'Ex',
    designations: [
      DesignationInfoModel(
        title: 'experience.designation.engineer',
        start: 'experience.engineer.start',
        end: 'experience.engineer.end',
      ),
    ],
    points: [
      'experience.icoderz.p1',
      'experience.icoderz.p2',
      'experience.icoderz.p3',
      'experience.icoderz.p4'
    ],
    expanded: false,
  ),
  CompanyInfoModel(
    name: 'experience.arihant',
    status: 'Ex',
    designations: [
      DesignationInfoModel(
        title: 'experience.designation.developer',
        start: 'experience.developer.start',
        end: 'experience.developer.end',
      ),
    ],
    points: [
      'experience.arihant.p1',
      'experience.arihant.p2',
      'experience.arihant.p3'
    ],
    expanded: false,
  ),
];
