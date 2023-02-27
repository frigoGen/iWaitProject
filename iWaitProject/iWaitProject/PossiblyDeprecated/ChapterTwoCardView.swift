//
//  ChapterTwoCardView.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 24/02/23.
//

import SwiftUI

struct ChapterTwoCardView: View {
    private var cards:[CardModel] = [
        CardModel(id:0, testo: " Allestimento \n Prendersi cura dei tavoli posandoli e sistemandoli, e rendere il luogo pulito pulendolo, sono solo due delle attività necessarie per svolgere il servizio in sala. Tutto questo lavoro si chiama ''mise en place''. \n In un ristorante, sono possibili due tipi di mise en place: mise en place à la carte e mise en place à la menu."),
        CardModel(id:1, testo:" Nel primo caso, il cliente sceglie i suoi piatti al momento e quindi il menu non è noto; il personale si occuperà di sistemare i coperti man mano. Nel secondo caso, invece, il menu è noto in anticipo e tutte le posate necessarie per il servizio vengono preparate prima. In entrambi i casi, tuttavia, è necessario essere in grado di sistemare correttamente il materiale su un tavolo."),
        CardModel(id:2, testo:"- Posizioni-\n  **Tovagliolo** a mezzo cm dal bordo del tavolo, alla sinistra delle forchette piegato in modo semplice. \n **Coltello grande** a destra del sottopiatto con la lama rivolta verso l’interno. \n **Secondo coltello** a destra accanto al primo \n **Forchetta grande** a sinistra del sottopiatto. \n **Seconda forchetta** a sinistra della prima forchetta, un po’ più in alto rispetto alla prima"),
        CardModel(id:3, testo:"**Bicchieri** \n - il bicchiere per il vino rosso va posto al di sopra delle punta del coltello, a 1 cm circa \n - il bicchiere per l’acqua va posto in diagonale, un po’ più in alto rispetto a quello per il vino rosso \n - il bicchiere per il vino bianco va posto in diagonale, un po’ più in basso rispetto a quello per il vino rosso \n \n Se oltre a questi bicchieri serve anche il flûte, questo viene messo in diagonale al di sopra del bicchiere per l’acqua."),
        CardModel(id:4, testo:"Piattino da pane con coltellino per spalmare il burro a sinistra, vicino alla forchetta, ma un po’ più distante dal bordo; il coltellino deve avere la lama rivolta verso l’esterno rispetto al coperto."),
        CardModel(id:5, testo:"Il coperto prenotato Se il cliente ha prenotato e ordinato il menù, il coperto dipende dal numero e dal tipo di portate. Non vanno però apparecchiate più di quattro paia di posate (comprese quelle per il dessert) e tre bicchieri per volta. Le altre posate o bicchieri necessari vanno apparecchiati separatamente durante il servizio. La successione delle portate determina quella delle posate."),
        CardModel(id:6, testo:"**Cucchiaio** sulla destra, all’esterno oppure in mezzo ai coltelli, a seconda della successione delle vivande. \n **Posate per il dessert** se il menù prevede un dessert, vengono disposte al di sopra del sottopiatto, parallelamente al bordo del tavolo."),
        CardModel(id:7, testo:" MENU \n \n  Il menu è un insieme di preparazioni culinarie che rappresentano i piatti dall’antipasto al dessert che si possono avere. E’ presentato con prezzo fisso al cliente. \n Ogni impiegato deve conoscere il menu e gli ingredienti dei piatti.\n I piatti sono divisi per categorie : gli antipasti, i primi, il pesce, la carne, i contorni e il dessert. "),
        CardModel(id:8, testo:"In un menu è necessario aggiungere tutti i componenti nutritivi: lipidi, glucosio etc \n Deve essere adeguato alla stagione con le giuste dosi di elementi nutritivi.\n Contenere I prodotti tipici del paese \n Un budget adeguato alla preparazione"),
        CardModel(id:9, testo:"La carta presenta una selezione di piatti ciascuno con un prezzo assegnato. La carata comprende: gli aperitivi, i pasti(primo, secondo desserts), i vini e le bevande. Ci possono essere diversi tipi di carta: la carta degli aperitivi, la carat dei pasti, dei vini e delle bevande, della caffetteria, del desserts, dei digestivi.")
    ]
    var body: some View {
        
        //LA TABVIEW MI SMINCHIA TUTTO !!!!!! HELP!!!! NON LA SOPPORTO !!!! -.- "
        VStack(alignment: .center, spacing: 10) {
            ScrollView (.horizontal){
                HStack {
                    
                    ForEach(cards, id: \.self ) { card in
                        CardView(card: card)
                            .padding()
                            .frame(width: 375)
                    }
                }
            }
        }.padding()
    }
}

struct ChapterTwoCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterTwoCardView()
    }
}
