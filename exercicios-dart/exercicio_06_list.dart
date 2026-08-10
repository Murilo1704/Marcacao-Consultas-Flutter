void main() {
  List<String> status = [
    'agendada',
    'confirmada',
    'cancelada',
  ];

  List<double> precos = [
    180.0,
    250.0,
    350.5,
    500.0,
  ];

  print('=== LISTA DE STATUS ===');

  for (String item in status) {
    print('Status da consulta: $item');
  }

  precos.add(420.0);

  print('\n=== VALORES ACIMA DE R\$ 300 ===');

  for (double preco in precos) {
    if (preco > 300) {
      print('R\$ ${preco.toStringAsFixed(2)}');
    }
  }

  print('\nQuantidade total de preços: ${precos.length}');
}