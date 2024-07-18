class ComparaisonData {
  int? id;
  int siteId;
  String siteName;
  String prestataire;
  DateTime? emissionDate;
  String periode;
  String montant;
  String consommation;
  String prixCollected;
  String powerCollected;
  String diffPrix;
  String diffPower;
  String infSup;
  String percent;

  ComparaisonData({
    this.id,
    required this.siteId,
    required this.siteName,
    required this.prestataire,
    this.emissionDate,
    required this.periode,
    required this.montant,
    required this.consommation,
    required this.prixCollected,
    required this.powerCollected,
    required this.diffPrix,
    required this.diffPower,
    required this.infSup,
    required this.percent,
  });

  factory ComparaisonData.fromJson(Map<String, dynamic> json) {
    return ComparaisonData(
      id: json['id'],
      siteId: json['siteId'],
      siteName: json['siteName'],
      prestataire: json['prestataire'],
      emissionDate: json['emissionDate'] != null ? DateTime.parse(json['emissionDate']) : null,
      periode: json['periode'],
      montant: json['montant'],
      consommation: json['consommation'],
      prixCollected: json['prixCollected'],
      powerCollected: json['powerCollected'],
      diffPrix: json['diffPrix'],
      diffPower: json['diffPower'],
      infSup: json['InfSup'],
      percent: json['percent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'siteId': siteId,
      'siteName': siteName,
      'prestataire': prestataire,
      'emissionDate': emissionDate?.toIso8601String(),
      'periode': periode,
      'montant': montant,
      'consommation': consommation,
      'prixCollected': prixCollected,
      'powerCollected': powerCollected,
      'diffPrix': diffPrix,
      'diffPower': diffPower,
      'infSup': infSup,
      'percent': percent,
    };
  }
}
