class Receipt3ColsText {
  Receipt3ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.properties,
  });

  final String firstCol;
  final String secondCol;
  final String thirdCol;

  final String properties;

  String get html => '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
        </div>
    ''';
}
