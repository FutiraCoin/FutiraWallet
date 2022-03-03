class RequestBodyModel{
  final String url;
  final Function(dynamic) errorFunc;
  final Map<String, dynamic> body;
  final bool showLoader;
  final bool forceRefresh;

  RequestBodyModel({
    required this.url,
    this.body=const<String,dynamic>{},
    this.showLoader = true,
    this.forceRefresh = true,
    required this.errorFunc,
  });
}