class GalsDioItem {
  GalsDioItem({
    this.baseUrl = '',
    this.origin = '',
    this.webId = '',
    this.connectTime = const Duration(seconds: 20),
    this.receiveTime = const Duration(seconds: 40),
    this.basicAuth = '',
    this.basicPass = '',
  });

  String baseUrl;
  String origin;
  String webId;
  Duration connectTime;
  Duration receiveTime;
  String basicAuth;
  String basicPass;
}
