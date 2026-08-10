enum StatusConsulta {
  agendada,
  confirmada,
  cancelada,
}

class Consulta {
  int id;
  String paciente;
  String medico;
  String especialidade;
  double valor;
  bool pagamentoConfirmado;
  String? telefone;
  StatusConsulta status;
  DateTime data;

  Consulta({
    required this.id,
    required this.paciente,
    required this.medico,
    required this.especialidade,
    required this.valor,
    required this.pagamentoConfirmado,
    required this.telefone,
    required this.status,
    required this.data,
  });
}

void main() {
  num registro = 100;

  String nomeSistema = 'Sistema de Consultas';

  int quantidadeMaximaConsultas = 10;

  double taxaAdicional = 25.50;

  bool sistemaAtivo = true;

  String? telefonePaciente = null;

  Set<String> especialidades = {
    'Cardiologia',
    'Pediatria',
    'Dermatologia',
    'Cardiologia',
  };

  List<Consulta> consultas = [
    Consulta(
      id: 1,
      paciente: 'João Silva',
      medico: 'Dra. Ana Souza',
      especialidade: 'Cardiologia',
      valor: 350.50,
      pagamentoConfirmado: true,
      telefone: telefonePaciente,
      status: StatusConsulta.agendada,
      data: DateTime(2026, 8, 15),
    ),
    Consulta(
      id: 2,
      paciente: 'Maria Oliveira',
      medico: 'Dr. Carlos Lima',
      especialidade: 'Pediatria',
      valor: 280.00,
      pagamentoConfirmado: false,
      telefone: '(11) 99999-9999',
      status: StatusConsulta.agendada,
      data: DateTime(2026, 8, 16),
    ),
  ];

  Map<String, dynamic> pacienteResumo = {
    'nome': consultas[0].paciente,
    'telefone': consultas[0].telefone,
    'especialidade': consultas[0].especialidade,
  };

  ({String paciente, double valor}) resumoRapido = (
    paciente: consultas[0].paciente,
    valor: consultas[0].valor,
  );

  double somaValores = 0;

  for (Consulta consulta in consultas) {
    somaValores += consulta.valor;
  }

  consultas[0].status = StatusConsulta.confirmada;
  consultas[1].status = StatusConsulta.cancelada;

  print('=== $nomeSistema ===');

  print('Sistema ativo: $sistemaAtivo');
  print('Registro: $registro');
  print('Quantidade máxima de consultas: $quantidadeMaximaConsultas');
  print('Taxa adicional: R\$ ${taxaAdicional.toStringAsFixed(2)}');

  print('\n=== RELATÓRIO FINAL ===');

  print('Quantidade de consultas: ${consultas.length}');

  print('Soma dos valores: R\$ ${somaValores.toStringAsFixed(2)}');

  print('\nStatus das consultas:');

  for (Consulta consulta in consultas) {
    print(
      '${consulta.paciente}: ${consulta.status.name}',
    );
  }

  print('\nEspecialidades únicas: $especialidades');

  print(
    'Telefone do paciente: ${telefonePaciente ?? 'não informado'}',
  );

  print('\n=== MAP DO PACIENTE ===');

  pacienteResumo.forEach((chave, valor) {
    print('$chave -> ${valor ?? 'não informado'}');
  });

  print('\n=== RECORD ===');

  print('Paciente: ${resumoRapido.paciente}');
  print(
    'Valor: R\$ ${resumoRapido.valor.toStringAsFixed(2)}',
  );

  print('\n=== DATAS DAS CONSULTAS ===');

  for (Consulta consulta in consultas) {
    print(
      '${consulta.paciente}: '
      '${consulta.data.day}/${consulta.data.month}/${consulta.data.year}',
    );
  }
}