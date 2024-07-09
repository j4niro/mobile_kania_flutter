/// Modèle de données pour les rapports provenant de l'API.
class RapportData {
  int siteId;
  String sitename;
  String periode;
  String totalPowerByDay;
  String totalPowerByMonth;
  String totalPowerByWeek;
  int totalPowerFcfa;
  double totalPowerKwh;

  RapportData(this.siteId, this.sitename, this.periode, this.totalPowerByDay, this.totalPowerByMonth, this.totalPowerByWeek, this.totalPowerFcfa, this.totalPowerKwh);

  RapportData.fromJson(Map<String, dynamic> json)
      : siteId = json['siteId'],
        sitename = json['siteName'],
        periode = json['periode'],
        totalPowerByDay = json['totalPowerByDay'],
        totalPowerByMonth = json['totalPowerByMonth'],
        totalPowerByWeek = json['totalPowerByWeek'],
        totalPowerFcfa = json['totalPowerFcfa'],
        totalPowerKwh = json['totalPowerKwh'];

  Map<String, dynamic> toJson() {
    return {
      'siteId': siteId,
      'sitename': sitename,
      'periode': periode,
      'totalPowerByDay': totalPowerByDay,
      'totalPowerByMonth': totalPowerByMonth,
      'totalPowerByWeek': totalPowerByWeek,
      'totalPowerFcfa': totalPowerFcfa,
      'totalPowerKwh': totalPowerKwh,
    };
  }
}
