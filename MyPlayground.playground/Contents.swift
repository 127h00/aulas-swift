import SwiftUI

//var greeting = "Hello, playground"

/*
// VARIÁVEIS

var nomeDaVariavel = "string"
// nome = 14 // NÃO PODE

var numero : Int
numero = 18

var junto : String = "assim!"

var intro = "oie,"
var nome = "anna"

print(intro + " " + nome)
print("-> \(intro) \(nome)")

var nota : Int = Int(8.5)
print(nota) // 8

let naturalidade = "campinas"
*/


/*
 EXERCÍCIO 1
 criar uma "ficha" com as seguintes informações suas e mostre-as em um print único:
 */
var inicialNome = "AC"
var nome = "Anna Clara"
var apelido = "anna"
var idade = 18
var altura = 1.69
var gostaSwift = true

print ("Inicial do nome: \(inicialNome) \n Nome: \(nome) \n Apelido: \(apelido) \n Idade: \(idade) Altura: \(altura) \n Gosta de Swift? (true/false): \(gostaSwift)")


if idade>18 {
    print("pode iniciar o processo de tirar CNH")
} else {
    print("voce nao pode dirigir >:[")
}

var CNHvalida = false

if idade>=18 && CNHvalida {
    print ("pode dirigir")
} else {
    print("não pode")
}


var c = 10
switch c {
    case 0...10: print("numero esta entre 0 e 10")
    default: print("naum")
}


//AULA 2 - 1408

var numero6 = 25
switch numero6 {
    case 0...10: print("Está entre 0 e 10")
    case 12...30: print("Está entre 11 e 30")
    default: print("número não está no intervalo")
    
}

var numero7 = 127
switch numero7 {
case let x where x%2 == 0: print("é par") // x vai assumir o valor de numero7 (que coisa patética...)
case let x where x%2 != 0: print("é ímpar")
default: break
}

// Laços de repetição
/// Loop com FOR
print("---")

for i in 1...10 {
    print(i)
}

print("---")

for i in 1..<10 {
    print(i)
}

print("---")

for _ in 1...127 {
    print("ouçam walk do nct127")
}

print("---")

// Loops while e repeat while

var count = 1

while count <= 10 {
    print("joga truco (?)")
    count+=1
}

print("---")

repeat {
    print ("joga poker")
    count+=1
} while count <= 15

print("---")

// break
var count1 = 0

while count1 <= 10 {
    print(count1)
    if count1==5{
        break
    }
    count1+=1
}

print("---")

// continue
/*
while count1 <= 20 {
    print(count1)
    if count1==9{
        continue // ele n vai mais atualizar o valor pq quando ele entra no continue ele ignora tudo abaixo dele e so vai voltarpro inicio do loop
    }
    count1+=1
} */

print("---")

// funções

func numero () {
    var resultado = 127
    print(resultado)
}

numero()


// funções com params

func subtrai (numero1:Int, numero2:Int) {
    var resultado = numero1 - numero2
    print(resultado)
}

subtrai(numero1:127, numero2:127)


func multiplica(_ numero1:Int, _ numero2:Int) { // _ [espaço] para n precisar passar o nome dos parametros (senhorkkkkkkkkk)
    var resultado = numero2 * numero1
    print(resultado)
}

multiplica(10, 2)



func divide (_ n1:Int, _ n2:Int) -> Int {
    return n1/n2
}

divide (10, 3)

func verificaAdulto(_ idade:Int) -> Bool {
    return idade >= 18
}

print(verificaAdulto(18))
