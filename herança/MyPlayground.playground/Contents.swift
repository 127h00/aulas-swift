import SwiftUI

class Conta {
    var saldo = 0.0
    var nome:String
    
    init(nome:String){
        self.nome = nome
    }
        
    func sacar(_ valor:Double){
        saldo -= valor
    }
    
    func depositar(_ valor:Double){
        saldo += valor
    }
}

class ContaPoupanca:Conta{
    var possuiCartaoDebito = false
    
    func solicitarCartaoDebito(){
        possuiCartaoDebito = true
        print("o cliente está solicitando cartão de débito")
    }
}

var contaPoupanca = ContaPoupanca(nome:"a")
contaPoupanca.depositar(10.00)
print(contaPoupanca.saldo)
contaPoupanca.solicitarCartaoDebito()

class ContaCorrente:Conta{
    func solicitarEmprestimo(_ valor:Double){
        print("cliente solicita emprestimo no valor de R$", valor)
        saldo += valor
    }
}

var contaCorrnte = ContaCorrente(nome:"c")
contaCorrnte.depositar(2000.00)
print(contaCorrnte.saldo)
contaCorrnte.solicitarEmprestimo(10000000)
print(contaCorrnte.saldo)
