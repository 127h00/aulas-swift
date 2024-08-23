import SwiftUI

// struct é tipo uma classe, TIPO, mas ele não deixa ter herança e tem algumas sintaxes diferentes
// struct gasta menos espaço na memória
// struct tem um construtor no secreto dele, eh oculto, mas não é proibido fazer 
struct ContaCorrente {
    var saldo = 0.0
    var nome:String
    
    mutating func sacar (_ valor:Double ) { // mutating para deixar eu mudar o valor de meu atributos hummmm...
        saldo -= valor
    }
    
    mutating func depositar (_ valor:Double ) {
        saldo += valor
    }
    
}

// instância da struct conta corrente
var contaCorrenteAnna = ContaCorrente(nome:"Anna") // nao pode ser constante pq eu quero mexer nos valores do meu object ( X let )
print("dinheiro que \(contaCorrenteAnna.nome) tem na conta:", contaCorrenteAnna.saldo)
contaCorrenteAnna.depositar(12700000.00) // dinheiro que pingou na conta dos investimentos 💋
print("dinheiro que \(contaCorrenteAnna.nome) tem na conta:", contaCorrenteAnna.saldo)
contaCorrenteAnna.sacar(30000.00) // tirando 30k para investirrrr 💰
print("dinheiro que \(contaCorrenteAnna.nome) tem na conta:", contaCorrenteAnna.saldo)

print("⋆ ˚｡⋆౨ৎ˚")

var contaCorrenteMiguel = ContaCorrente(nome:"Miguel")
print("dinheiro que \(contaCorrenteMiguel.nome) tem na conta:", contaCorrenteMiguel.saldo)
contaCorrenteMiguel.depositar(13000000.00) // salario bem humilde do miguelitoooo
print("dinheiro que \(contaCorrenteMiguel.nome) tem na conta:", contaCorrenteMiguel.saldo)
contaCorrenteMiguel.sacar(100000.00) // comprou um carro para mim e investiu o resto
print("dinheiro que \(contaCorrenteMiguel.nome) tem na conta:", contaCorrenteMiguel.saldo)

print(" ₊⋆·˚🪷.‧₊˚ 🦢༉‧₊˚. ")
print(" Classe ")
print(" ₊⋆·˚.‧₊˚ ༉‧₊˚. ")

class ContaCorrentePro {
    var saldo = 0.0
    var nome:String
    
    // em classe o construtor é obrigatório! (caso você tenha criado atributos que não tenham sido inicializados
    init(nome:String) {
        self.nome = nome
    }
    
    func sacar (_ valor:Double) {
        saldo -= saldo
    }
    
    func depositar (_ valor:Double) {
        saldo += saldo
    }
}

var contaSuperPro = ContaCorrentePro(nome: "anna")
print("saldo: ", contaSuperPro.saldo)
contaSuperPro.depositar(127.00)
print("saldo: ", contaSuperPro.saldo)

// quando vc cria a instancia de uma classe vc esta criando um endereço na memoria -> guarda por referencia -> VETOR
// struct - sempre vai guardar um espaço novo a cada atualização -> guarda por valor -> LISTA LIGADAher
 
