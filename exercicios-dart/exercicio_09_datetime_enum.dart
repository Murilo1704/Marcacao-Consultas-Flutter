enum StatusConsulta {
  agendada,
  confirmada,
  cancelada,
}

void main() {
  DateTime dataConsulta = DateTime(2026, 8, 15);

  StatusConsulta statusAtual = StatusConsulta.agendada;

  ({String paciente, String medico, double valor}) resumo = (
    paciente: 'João Silva',
    medico: 'Dra. Ana Souza',
    valor: 350.50,
  );

  print('=== DADOS DA CONSULTA ===');

  print(
    'Data da consulta: ${dataConsulta.day}/${dataConsulta.month}/${dataConsulta.year}',
  );

  print('Status atual: ${statusAtual.name}');

  print('Paciente: ${resumo.paciente}');
  print('Médico: ${resumo.medico}');
  print('Valor: R\$ ${resumo.valor.toStringAsFixed(2)}');

  statusAtual = StatusConsulta.confirmada;

  print('\n=== STATUS ATUALIZADO ===');
  print('Novo status: ${statusAtual.name}');

  DateTime dataRetorno = dataConsulta.add(
    Duration(days: 7),
  );

  print(
    'Data de retorno: ${dataRetorno.day}/${dataRetorno.month}/${dataRetorno.year}',
  );
}