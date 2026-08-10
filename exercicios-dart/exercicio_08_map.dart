void main() {
  Map<String, dynamic> consulta = {
    'id': 1001,
    'paciente': 'João Silva',
    'medico': 'Dra. Ana Souza',
    'valor': 350.50,
    'status': 'agendada',
    'telefone': null,
  };

  print('=== DADOS DA CONSULTA ===');

  print('Paciente: ${consulta['paciente']}');
  print('Médico: ${consulta['medico']}');
  print('Valor: R\$ ${consulta['valor'].toStringAsFixed(2)}');

  consulta['status'] = 'confirmada';

  consulta['telefone'] = '(11) 99999-9999';

  print('\n=== DADOS ATUALIZADOS ===');

  consulta.forEach((chave, valor) {
    print('$chave -> $valor');
  });
}