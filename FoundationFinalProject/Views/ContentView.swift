

import SwiftUI

struct ContentView: View {

    // CORPO PRINCIPAL DA TELA INICIAL

    var body: some View {
        NavigationStack {
            ScrollView {

                VStack(alignment: .leading, spacing: 30) {

                    // Cabeçalho com nome do app
                    cabecalho

                    // Área de leitura atual
                    leituraAtual

                    // Área de recomendações
                    recomendacoes

                    // Área de outras opções
                    outrasOpcoes
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }


    // CABEÇALHO DO APLICATIVO

    private var cabecalho: some View {

        HStack {

            VStack(alignment: .leading, spacing: 5) {

                // Nome do aplicativo
                Text("App de livros")
                    .font(.largeTitle)
                    .fontWeight(.bold)

            }

            Spacer()

            // Ícone do aplicativo (nao sei se vai ter ne)
            Image(systemName: "books.vertical.fill")
                .font(.system(size: 30))
        }
    }


    // ÁREA DE LEITURA ATUAL

    private var leituraAtual: some View {

        VStack(alignment: .leading, spacing: 10) {

            // Título da seção
            Text("Leitura atual")
                .font(.title2)
                .fontWeight(.bold)

            // Área que contém a capa e as informações do livro
            HStack(spacing: 15) {

                // Capa do livro
                Image(" ")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 125, height: 180)
                    .clipped()
                    .cornerRadius(12)

                // Informações do livro
                VStack(alignment: .leading, spacing: 11) {

                    // Título do livro
                    Text(" Titulo")
                        .font(.headline)

                    // Autor do livro
                    Text("nome autor")
                        .font(.subheadline)

                    // Barra de porcentagem de leitura
                    ProgressView(value: 0.67)

                    // Botão de atualização (estrutura inicial)
                    Button(action: {}) {
                        Label("Atualizar", systemImage: "pencil")
                    }
                }
            }
        }
    }


    // ÁREA DE RECOMENDAÇÕES

    private var recomendacoes: some View {

        VStack(alignment: .leading, spacing: 15) {

            // Título da seção
            Text("Recomendações")
                .font(.title2)
                .fontWeight(.bold)

            // Lista de livros recomendados
            ScrollView(.horizontal, showsIndicators: false) {

                HStack(alignment: .top, spacing: 18) {

                    // Primeiro livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )

                    // Segundo livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )

                    // Terceiro livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )

                    // Quarto livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )
                }
            }
        }
    }


    // ÁREA DE OUTRAS OPÇÕES

    private var outrasOpcoes: some View {

        VStack(alignment: .leading, spacing: 15) {

            // Título da seção
            Text("Outras opções")
                .font(.title2)
                .fontWeight(.bold)

            // Lista de outras sugestões
            ScrollView(.horizontal, showsIndicators: false) {

                HStack(alignment: .top, spacing: 18) {

                    // Primeiro livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )

                    // Segundo livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )

                    // Terceiro livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )

                    // Quarto livro
                    livroCard(
                        capa: " ",
                        titulo: " "
                    )
                }
            }
        }
    }


    // COMPONENTE DE CADA LIVRO

    // Função reutilizável para mostrar a capa e o título.
    // É utilizada tanto nas recomendações quanto nas outras opções.

    private func livroCard(
        capa: String,
        titulo: String
    ) -> some View {

        VStack(spacing: 8) {

            // Imagem da capa
            Image(capa)
                .resizable()
                .scaledToFill()
                .frame(width: 125, height: 190)
                .clipped()
                .cornerRadius(12)

            // Nome do livro
            Text(titulo)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: 125)
        }
    }
}


// PRÉ-VISUALIZAÇÃO

#Preview {
    ContentView()
}
