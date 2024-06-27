void main() {
//   String nome = 'Laranja';
//   double peso = 100.2;
//   String cor = 'Verde e Amarela';
//   String sabor = 'Doce e cítrica';
//   int diasDesdeColheita = 20;
//   bool isMadura;
//
//   Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
//   Fruta fruta02 = Fruta("Uva",40,"Roxa","Doce",20);
//
// print(fruta01.cor);

Legumes cenoura = Legumes("cenoura", 50, "laranja",true);
Fruta abacaxi = Fruta("abacaxi", 800, "verde amarelado", "azedo", 28);
Citricas carambola = Citricas("carambola", 40, "amarela", "azeda", 10, 25);

cenoura.printAlimento();
abacaxi.printAlimento();
carambola.printAlimento();

cenoura.cozinhar();
abacaxi.fazerSuco();

cenoura.assar();
cenoura.fazerMassa();
cenoura.separarIngredientes();

}

class Fruta extends Alimento{

  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}) : super (nome, peso, cor);

  void estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida há $diasDesdeColheita e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura');
  }
  void fazerSuco(){
    print("Você fez suco utilizando $nome");
  }


}

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso , this.cor);
  
  void printAlimento(){
    print("Este(a) $nome pesa $peso g e é $cor.");
  }
}

class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinhar;
  Legumes (String nome, double peso, String cor, this.isPrecisaCozinhar) :super (nome,peso,cor);

  void cozinhar () {
    if (isPrecisaCozinhar) {
      print("Pronto o $nome está cozinhando!");
    } else {
      print("Não precisa cozinhar");
    }
  }

  @override
  void assar() {
   print("bolo assando");
  }

  @override
  void fazerMassa() {
    print("massa misturada");
  }

  @override
  void separarIngredientes() {
  print("ingredientes separados");
  }}

class Citricas extends Fruta{
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.nivelAzedo):super (nome, peso, cor, sabor, diasDesdeColheita);
}

abstract class Bolo{
  void separarIngredientes();
  void fazerMassa();
  void assar();
}