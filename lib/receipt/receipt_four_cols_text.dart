class Receipt4ColsText {
  Receipt4ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.fourthCol,
    required this.properties,
  });

  final String firstCol;
  final String secondCol;
  final String thirdCol;
  final String fourthCol;

  final String properties;

  String get html => '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
            <div class="text-normal">$fourthCol</div>

        </div>
    ''';
}
