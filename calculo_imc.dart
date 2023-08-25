import 'dart:io';

void main(){
  calculoImc();
}

void calculoImc(){
  print("=== Digite seu peso ===");
  String? textPeso = stdin.readLineSync();
  double?  peso = double.tryParse(textPeso!);

  if (peso != null && peso > 0){
  print("=== Digite sua altura ===");
  String? textAltura = stdin.readLineSync();
  double? altura = double.tryParse(textAltura!);

  if (altura != null && altura > 0){
  double imc = calcImc(peso, altura);  
  imprimirResultado(imc);
  } else {
      print("Altura inválida.");
    }
  } else {
    print("Peso inválido.");
 }
}

double calcImc(double peso, double altura){
  return peso / (altura * altura);
}

void imprimirResultado(double imc){
    print("===========================");

  if (imc < 16){
    print("Magreza grave.");
  } else if(imc >= 16 && imc <17){
    print("Magreza moderada.");
  } else if(imc >= 17 && imc <18.5){
    print("Magreza leve.");
  } else if(imc >= 18.5 && imc < 25){
    print("Peso normal.");
  } else if(imc >= 25 && imc < 30){
    print("Sobrepeso.");
  } else if(imc >= 30 && imc < 35){
    print("Obesidade grau 1.");
  } else if(imc >= 35 && imc < 40){
    print("Obesidade grau 2.");
  } else {
    print("Obesidade grau 3.");
  }
}