import Notion
import Foundation

import SwiftUI

@NotionPage("")
struct NotionLivro: Identifiable {
    @NotionTitleProperty("Nome") var name: String
    @NotionProperty("Autor") var autor: String
    @NotionProperty("Capa") var capa: URL?
    @NotionProperty("Genero") var genero: [Genero]
    @NotionProperty("Sinopse") var sinopse: String
    @NotionProperty("Paginas") var pags: Double?
    @NotionProperty("Classificação") var classif: Double?
}

struct Livro: Identifiable {
    let id = UUID() // ntn_b82709803235EAcxNtFVGmeW512xDu3GHoEEHDl8c0c5U7
    let name: String
    let autor: String
    let capa: ImageResource
    let genero: String
    let sinopse: String
    let pags: Int
    let classif: Int
}

enum Genero: String {
    case Fantasia
    case Romance
    case Suspense
    case Sobrenatural
    case Ação
    case Aventura
    case Thirler
    case FicçãoCientífica
    case Mistério
    case RomancePolícial
    case DramaPscológico
    case Comédia
    case Gótico
    case Distopia
    case Infantojuvenil
}

enum Classificacao: Int {
    case livre
    case ten = 10
    case twelve = 12
    case fourteen = 14
    case sixteen = 16
    case eighteen = 18
}
