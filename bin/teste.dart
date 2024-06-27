// void main (){
//   int energia = 100;
//   int idade = 27;
//   double altura = 1.88;
//   var identidade = (idade == altura);
//   const String nome = 'guilherme';
//   bool maiorDeIdade;
//   if(idade>=18){
//     maiorDeIdade = true;
//   }
//   else{
//     maiorDeIdade = false;
//   }
//   String frase = 'Ola! meu nome é $nome\n'
//   'eu tenho $idade anos de idade';
//   List <String> listaNomes = ['melita','miguel','tulio','shiva'];
//   List <dynamic> eu = [27, 1.88, identidade, nome];
//   String frase2 = 'Ola! meu nome é ${eu[3]}\n'
//       'eu tenho ${eu[0]} anos de idade\n'
//       'eu sou maior de idade? $maiorDeIdade';
//   print (frase2);
//   for(int i = 1; i<5;i++){
//     print('Concluí $i voltas');
//   }
//
//   while(energia>0){
//     print('Mais uma Repetição');
//     energia = energia - 10;
//   }
//
//   do{
//     print("Mais uma repetição");
//     energia = energia - 10;
//   }while(energia>0);
//
//
// }
//

main() {
  funcRecursiva(0, 10);
}

funcRecursiva(int contador, int condicaoParada) {
  print("Estamos há $contador iterações sem StackOverflow.");
  if (contador >= condicaoParada) {
    return;
  }
  funcRecursiva(contador + 1, condicaoParada);
}