void main() {
  Set<String> especialidades = {
    'Cardiologia',
    'Pediatria',
    'Dermatologia',
  };

  print('=== SET DE ESPECIALIDADES ===');

  especialidades.add('Cardiologia');

  especialidades.add('Ortopedia');

  print('Especialidades: $especialidades');

  print(
    'Pediatria existe no conjunto? ${especialidades.contains('Pediatria')}',
  );

  print(
    'Quantidade de especialidades únicas: ${especialidades.length}',
  );
}