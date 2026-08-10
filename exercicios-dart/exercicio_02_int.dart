void main() {
  int idPaciente = 1001;
  int idMedico = 2001;
  int idConsulta = 3001;
  int idadePaciente = 65;
  int quantidadeConsultasMes = 4;

  int somaIds = idPaciente + idMedico;
  int proximoIdConsulta = idConsulta + 1;
  int dobroConsultas = quantidadeConsultasMes * 2;

  print('=== DADOS DA CONSULTA ===');

  print('Soma de idPaciente + idMedico: $somaIds');

  print('Próximo ID da consulta: $proximoIdConsulta');

  if (idadePaciente >= 60) {
    print('Paciente prioritário');
  } else {
    print('Paciente comum');
  }

  print('Dobro da quantidade de consultas no mês: $dobroConsultas');
}