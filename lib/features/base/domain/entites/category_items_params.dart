class CategoryItemsParams {
  final int pageNumber;
  final int pageCount;
  final bool? refresh;

  CategoryItemsParams({this.refresh = true, required this.pageNumber, required this.pageCount});

  Map<String, dynamic> toJson() => {
        "pageCount": pageCount,
        "pageNumber": pageNumber,
      };
}
