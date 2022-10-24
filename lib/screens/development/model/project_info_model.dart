class ProjectInfoModel {
  final String title;
  final String logo;
  final String description;
  final String downloads;
  final Map<String, String> urls;

  ProjectInfoModel({
    required this.title,
    required this.logo,
    required this.description,
    required this.downloads,
    required this.urls,
  });
}
