class MockEntity {
  final String name;
  final String currency;
  final bool buy;
  final double amount;
  final double price;
  final String time;

  MockEntity({
    required this.name,
    required this.currency,
    required this.buy,
    required this.amount,
    required this.price,
    required this.time,
  });
}

List<MockEntity> entity = [
  MockEntity(
    name: 'TBCC',
    currency: 'USDT',
    buy: false,
    amount: 4407.32,
    price: 0.0673,
    time: '2022-03-06 17:50:12',
  ),
  MockEntity(
    name: 'BTC',
    currency: 'USDT',
    buy: true,
    amount: 0.32500543,
    price: 33000,
    time: '2022-03-05 16:45:24',
  ),
  MockEntity(
    name: 'BNB',
    currency: 'USDT',
    buy: false,
    amount: 407.2,
    price: 303.73,
    time: '2022-03-05 13:59:12',
  ),
  MockEntity(
    name: 'BTC',
    currency: 'USDT',
    buy: true,
    amount: 0.9500543,
    price: 31000,
    time: '2022-03-05 10:45:24',
  ),
  MockEntity(
    name: 'TBCC',
    currency: 'USDT',
    buy: true,
    amount: 10000.32,
    price: 0.0565,
    time: '2022-03-05 02:50:12',
  ),
  MockEntity(
    name: 'BTC',
    currency: 'USDT',
    buy: true,
    amount: 0.1500543,
    price: 29600,
    time: '2022-03-04 22:45:24',
  ),
];
