import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/skills/model/skills_info_model.dart';

final List<SkillsInfoModel> skillsInfoList = [
  SkillsInfoModel(
    name: 'skills.leadership',
    icon: FontAwesomeIcons.peopleRoof,
    skills: [
      'skills.leadership.agile',
      'skills.leadership.service',
      'skills.leadership.collaboration',
      'skills.leadership.documentation',
      'skills.leadership.time',
      'skills.leadership.critical',
      'skills.leadership.problem',
      'skills.leadership.multitasking',
      'skills.leadership.microsoft',
    ],
  ),
  SkillsInfoModel(
    name: 'skills.programming',
    icon: FontAwesomeIcons.code,
    skills: [
      'skills.programming.android',
      'skills.programming.java',
      'skills.programming.kotlin',
      'skills.programming.flutter',
      'skills.programming.dart',
      'skills.programming.native',
      'skills.programming.redux',
      'skills.programming.React',
      'skills.programming.script',
      'skills.programming.spring',
      'skills.programming.sqlLite',
      'skills.programming.mysql',
      'skills.programming.couchdb',
    ],
  ),
  SkillsInfoModel(
    name: 'skills.ide',
    icon: FontAwesomeIcons.fileCode,
    skills: [
      'skills.ide.studio',
      'skills.ide.intellij',
      'skills.ide.vs',
      'skills.ide.terminal',
    ],
  ),
  SkillsInfoModel(
    name: 'skills.distribution',
    icon: FontAwesomeIcons.codeBranch,
    skills: [
      'skills.distribution.git',
      'skills.distribution.source',
    ],
  ),
];
