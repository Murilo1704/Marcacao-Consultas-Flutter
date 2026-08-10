void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = true;
  bool pacienteTemTelefone = false;
  bool pagamentoConfirmado = true;

  print('=== STATUS DA CONSULTA ===');

  print('Médico ativo: $medicoAtivo');
  print('Consulta agendada: $consultaAgendada');
  print('Paciente tem telefone: $pacienteTemTelefone');
  print('Pagamento confirmado: $pagamentoConfirmado');

  if (medicoAtivo && consultaAgendada) {
    print('Consulta pode ser confirmada');
  }

  if (pacienteTemTelefone == false) {
    print('Aviso: paciente sem telefone para contato');
  }

  if (pagamentoConfirmado == true) {
    print('Liberado para atendimento');
  }
}