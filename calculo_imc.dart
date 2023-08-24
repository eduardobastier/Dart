import 'dart:io';

main(){
calculoImc();
}

calculoImc(){
  print("=== Digite seu peso ===");
  String? textPeso = stdin.readLineSync();
  double?  peso = double.tryParse(textPeso!);

if (peso != null){
  print("=== Digite sua altura ===");
  String? textAltura = stdin.readLineSync();
  double? altura = double.tryParse(textAltura!);

if (altura != null){
  double calcImc = peso / (altura * altura);  
  imprimirResultado(calcImc);
  } else {
      print("Altura inválida.");
    }
  } else {
    print("Peso inválido.");
  }
}

imprimirResultado(calcImc){
    print("===========================");

  if (calcImc < 16){
    print("Magreza grave");
  } else if(calcImc >= 16 && calcImc <17){
    print("Magreza moderada");
  } else if(calcImc >= 17 && calcImc <18.5){
    print("Magreza leve");
  } else if(calcImc >= 18.5 && calcImc < 25){
    print("Peso normal");
  } else if(calcImc >= 25 && calcImc < 30){
    print("Sobrepeso");
  } else if(calcImc >= 30 && calcImc < 35){
    print("Obesidade grau 1");
  } else if(calcImc >= 35 && calcImc < 40){
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}