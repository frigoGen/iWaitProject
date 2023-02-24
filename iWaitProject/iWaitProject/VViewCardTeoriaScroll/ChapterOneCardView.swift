//
//  ChapterOneCardView.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 24/02/23.
//

import SwiftUI

struct ChapterOneCardView: View {
    private var cards:[CardModel] = [
        CardModel(id:0, testo: "foto divisa"),
        CardModel(id: 1, testo:"La brigata in generale può essere schematizzata in modo gerarchico. In primo luogo abbiamo il Maitre d’hotel, dopodiché ci sono lo chef de rang e lo chef ai vini, ed infine il commis de rang." ),
        CardModel(id: 2, testo: "DIRETTORE DEL RISTORANTE \n Si occupa dell’organizzazione e l’amministrazione del servizio di ristorazione. Aiutato dal maitre, stabilisce anche i turni di servizio e i riposi del personale. Inoltre si occupa del Food&Beverage Manager. \n \n DIRETTORE AI BANCHETTI \n Gestisce il servizio banchetti e ne segue tutti gli aspetti organizzativi: predispone il buffet, si occupa dell’estetica, si occupa del menu e della scelta delle bevande."),
        CardModel(id: 3, testo: "PRIMO MAITRE D’HOTEL \n Gestisce il servizio in sala e stabilisce il personale. Definisce i turni del personale insieme al direttore. Prende le comandes, mantiene i rapporti con il cliente. E’ responsabile del materiale e provvede all’inventario. "),
        CardModel(id: 4, testo: "SECONDO MAITRE D’HOTEL \n Affianca il primo maitre d’hotel. Coordina e controlla il servizio, gli orari del eprsonale, la pulizia della sala e del materiale. Riceve i clienti, prende le ordinazioni; in mancanza di personale prepara anche i piatti alla lampada.  "),
        CardModel(id: 5, testo: "MAITRE AI BANCHETTI \n Cura l’organizzazione e il servizio dei banchetti in base alle direttive del direttore ai banchetti.\n \n MAITRE AI PIANI \n E’ responsabile del servizio dei pasti nelle camere. La sua postazione di lavoro è vicino l’office ai piani che in diretto contatto telefonico con i clienti. Risponde al direttore o al maitre d’hotel."),
        CardModel(id: 6, testo:"SOMMELIER (chef ai vini) \n Si occupa della scelta dei vini, del loro servizio, della loro selezione e dei loro abbinamenti con il cibo. \n \n COMMIS SOMMELIER \n  Lavora a stretto contatto con il sommelier"),
        CardModel(id: 7, testo:"HOSTESS DI SALA Svolge il compito per l’accoglienza della clientela. Riceve le prenotazioni e le comunicazioni telefoniche. Collabora al servizio di guardaroba ed aiuta il maitre accompagnando i clienti ai tavoli se necessario. "),
        CardModel(id: 8, testo: "CHEF DE RANG Cura l’adattamento del servizio del proprio rango e partecipa sia alla mise en place nella sala da pranzo sia alle pulizie del proprio reparto. Se necessario deve anche provvedere al servizio delle pietanze e a prendere le ordinazioni. Lavora con il commis, guidandolo nella distribuzione e nella consegna delle commandes."),
        CardModel(id: 9, testo:"COMMIS DE RANG \n Prende ordini dallo chef de rang. Ritira le portate della cucina e le depone sul tavolo di servizio, si occupa della mise en place, sistema il materiale nell’office, libera i tavoli e mantiene pulite attrezzature e aree di lavoro.\n \n COMMIS D’ETAGE (commis ai piani ) \n Collabora con i maitre ai piani nella preparazione dei carrelli e dei vassoi da servire. Cura l’ordine e al pulizia dell’office ai piani.")
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
       
    }//body
}

struct ChapterOneCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterOneCardView()
    }
}
