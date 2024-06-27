void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  // print(isMadura);
  // print(funcEstaMadura(50));
  // mostrarMadura("abacate", 15, cor: "verde");

  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print(quantosDias);
}

int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

void mostrarMadura(String nome, int dias, {String? cor}){
  if (dias >= 30 ){
    print ("A $nome está madura.");
  }else{
    print ("A $nome não está madura");
  }

  if(cor != null){
    print ("a $nome é $cor");
  }
}

bool funcEstaMadura(int dias){
  if (dias >= 30 ){
    return true;
  }else{
    return false;
  }
}