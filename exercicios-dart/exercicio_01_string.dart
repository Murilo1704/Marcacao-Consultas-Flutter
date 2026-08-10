void main() {
  String nomePaciente = 'João Silva';
  String nomeMedico = 'Dra. Ana Souza';
  String especialidade = 'Cardiologia';
  String emailPaciente = 'joao.silva@email.com';

  print('=== FICHA DA CONSULTA ===');
  print('Paciente: $nomePaciente');
  print('Médico: $nomeMedico');
  print('Especialidade: $especialidade');
  print('E-mail: $emailPaciente');

  print('\nNome do paciente em maiúsculas: ${nomePaciente.toUpperCase()}');

  print('Quantidade de caracteres do e-mail: ${emailPaciente.length}');

  print('O e-mail contém @? ${emailPaciente.contains('@')}');
}