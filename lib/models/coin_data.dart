import 'package:flutter_toolbox/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> getRate({String base, String quote}) async {
    String url =
        'https://rest.coinapi.io/v1/exchangerate/$base/$quote?apikey=581ADDFB-A870-4B45-98B2-EC67E85D1A6B';
    NetworkHelper networkHelper = NetworkHelper(url);

    var data = await networkHelper.getData();
    return data;
  }
}
