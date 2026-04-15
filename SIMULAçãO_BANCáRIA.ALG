Algoritmo "Simulação_bancária"
// Descrição  : Criação de um sistema de caixa eletrónico
// Autores    : Elisa Luanda, Garcia Quipanga, Jorge Quifuando e Zacarias Manuel
// Data atual  : 14/04/2026
Var
   valor, saldo : real
   opcao : inteiro

Inicio
   saldo <- 5583000 // Saldo disponível na conta
   opcao <- 10   //
       Escreval("***** Seja Bem vindo ao nosso caixa eletrónico *****")
   Enquanto opcao <> 0 faca
      Escreval("")
      //Escreval("Saldo Atual: ", saldo)
      Escreval("1. Levantamento")
      Escreval("2. Consulta")
      Escreval("0. Sair")
      Escreva("Escolha uma opção: ")
      leia(opcao)

      Escolha opcao
         Caso 1
            Escreva("Digite o valor que pretende levantar: ")
            leia(valor)
            saldo <- saldo - valor
            Se (valor % 5000 = 0) ou (valor % 2000 = 0 )E (valor <= saldo) entao
                 Escreval("Levantamento de ", valor, "Kzs realizado com sucesso!")

            Senao
                 Escreval("Erro: Valor inválido ou saldo insuficiente.")
                 Escreval("Notad disponíveis: 5000 e 2000")
            FimSe

         Caso 2
            Escreval("O seu saldo atual é: ", saldo)

         Caso 0
            Escreval("Obrigado por usar o nosso banco!")

         OutroCaso
            Escreval("Opção inválida!")
      FimEscolha
   FimEnquanto
Fimalgoritmo
