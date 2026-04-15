Algoritmo "Gestão_Escolar"

// Descrição   : Sistema de cadastro de alunos
// Autores    : Elisa Luanda, Garcia Quipanga, Jorge Quifuando e Zacrias Manuel
// Data de execução  : de 14 à 15/04/2026
Var
   nomes: vetor[1..50] de caracter
   matriculas: vetor[1..50] de inteiro
   medias: vetor[1..50] de real
   situacoes: vetor[1..50] de caractere
   opcao, i, totalAlunos, matPesquisa: inteiro
   n1, n2, n3, n4, somaMedias, maiorMedia: real
   encontrado: logico

Inicio
               //Menu inicial
      Escreval("=================================================")
      Escreval("SEJA BEM VINDO AO NOSSO SISTEMA DE GESTÃO ESCOLAR")
      Escreval("=================================================")
   Repita
      Escreval("1. Cadastrar Aluno")
      Escreval("2. Listar Todos")
      Escreval("3. Pesquisar por Matrícula")
      Escreval("4. Exibir Estatísticas")
      Escreval("0. Sair")
      Escreva("Escolha uma opção: ")
      leia(opcao)
      Escreval(" ")
      Escolha opcao

              //Cadastro de aluno
         Caso 1
            Se totalAlunos < 50 entao
               totalAlunos <- totalAlunos + 1
               Escreval("--- Cadastro do Aluno ", totalAlunos, " ---")
               Escreva("Nome: ")
               leia(nomes[totalAlunos])
               Escreva("Matrícula: ")
               leia(matriculas[totalAlunos])
               Escreva("Digite as 4 notas (separadas por espaço ou enter): ")
               leia(n1, n2, n3, n4)

               // Cálculo da Média
               medias[totalAlunos] <- (n1 + n2 + n3 + n4) / 4

               // Definição da Situação
               Se medias[totalAlunos] >= 9.5 entao
                  situacoes[totalAlunos] <- "Aprovado!"
               Senao
                  situacoes[totalAlunos] <- "Reprovado!"
               FimSe
               Escreval("Aluno cadastrado com sucesso!")
            Senao
               Escreval("Lamentamos, já não há vagas!")
            FimSe

         Caso 2 // Alunos cadastrados
            Se totalAlunos = 0 entao
               Escreval("Nenhum aluno cadastrado.")
            Senao
               Escreval("LISTAGEM DE ALUNOS:")
               Para i de 1 ate totalAlunos faca
                  Escreval(matriculas[i], " | ", nomes[i], " | Média: ", medias[i], " | ", situacoes[i])
               FimPara
            FimSe

         Caso 3 // Pesquisar aluno
            Escreva("Digite a matrícula para pesquisa: ")
            leia(matPesquisa)
            encontrado <- falso
            Para i de 1 ate totalAlunos faca
               Se matriculas[i] = matPesquisa entao
                  Escreval("Encontrado: ", nomes[i], " - Situação: ", situacoes[i])
                  encontrado <- verdadeiro
               FimSe
            FimPara
            Se nao encontrado entao
               Escreval("Matrícula não encontrada.")
            FimSe

         Caso 4 // Estátistica
            Se totalAlunos > 0 entao
               somaMedias <- 0
               maiorMedia <- 0
               Para i de 1 ate totalAlunos faca
                  somaMedias <- somaMedias + medias[i]
                  Se medias[i] > maiorMedia entao
                     maiorMedia <- medias[i]
                  FimSe
               FimPara
               Escreval("Média Geral da Turma: ", somaMedias / totalAlunos)
               Escreval("Maior Média Registada: ", maiorMedia)
               Escreval("Total de Alunos: ", totalAlunos)
            Senao
               Escreval("Sem dados para estatísticas.")
            FimSe

      FimEscolha
      Escreval("---------------------------")

   Ate opcao = 0

Fimalgoritmo