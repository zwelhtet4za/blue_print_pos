enum ConnectionStatus {
  connected,
  disconnected,
  timeout,
  printerNotSelected,
  ticketEmpty,
  printInProgress,
  scanInProgress
}

extension ConnectionStatusExtension on ConnectionStatus {
  String get toStr => describeEnum(this);
}

String describeEnum(Object enumEntry) {
  final String description = enumEntry.toString();
  final int indexOfDot = description.indexOf('.');
  assert(indexOfDot != -1 && indexOfDot < description.length - 1);
  return description.substring(indexOfDot + 1);
}
