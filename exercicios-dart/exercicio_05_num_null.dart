void main() {
  num registro = 10;

  print('=== NUM + NULL SAFETY ===');

  print('Registro com valor inteiro: $registro');

  registro = 10.5;

  print('Registro com valor decimal: $registro');

  String? telefone = null;

  String? observacoes = 'Paciente prefere atendimento pela manhã.';

  print('Telefone: ${telefone ?? 'não informado'}');

  if (observacoes != null) {
    print('Tamanho das observações: ${observacoes.length}');
  }
}