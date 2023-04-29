import 'dart:ffi';
class Currency {
  final String from;
  final String to;
  final dynamic rate;
  final dynamic result;

  Currency({required this.from, required this.to, required this.rate,required this.result});
  factory Currency.fromMap({required Map data}) {
    return Currency(
      from: data["query"]["from"],
      to: data["query"]["to"],
      rate: data["info"]["rate"],
      result: data["result"],
    );
  }
}