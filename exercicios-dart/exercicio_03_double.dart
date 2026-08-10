void main() {
  double consulta1 = 180.0;
  double consulta2 = 350.5;
  double consulta3 = 500.0;

  double somaTotal = consulta1 + consulta2 + consulta3;
  double media = somaTotal / 3;

  double consultaMaisCara = consulta3;
  double valorComDesconto = consultaMaisCara * 0.90;

  print('=== VALORES DAS CONSULTAS ===');

  print('Consulta 1: R\$ ${consulta1.toStringAsFixed(2)}');
  print('Consulta 2: R\$ ${consulta2.toStringAsFixed(2)}');
  print('Consulta 3: R\$ ${consulta3.toStringAsFixed(2)}');

  print('\nSoma total: R\$ ${somaTotal.toStringAsFixed(2)}');

  print('Média: R\$ ${media.toStringAsFixed(2)}');

  print(
    'Consulta mais cara com 10% de desconto: R\$ ${valorComDesconto.toStringAsFixed(2)}',
  );
}