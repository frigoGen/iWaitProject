//
//  ChapterThreeCardView.swift
//  iWaitProject
//
//  Created by Antonia Ambrosio on 24/02/23.
//

import SwiftUI

struct ChapterThreeCardView: View {
    private var cards:[CardModel] = [
        CardModel(id:0, testo:"IGIENE \n \n Per il cameriere l’igiene della persone a la cura del fisico sono importanti:\n Il cameriere deve avere un aspetto gradevole fresco e curato e deve suscitare ammirazione e stima tanto nella clientela quanto della direzione dei colleghi"),
        CardModel(id:1, testo:"Il cameriere deve stare in piedi per molte ore e deve passare di continuo da ambienti caldi come la cucina ad altri ambienti freschi come la sala. Inoltre il suo lavoro comporta fatica e stress quindi è necessario che curi anche la sua salute fisica e mentale"),
        CardModel(id:2, testo:"Il cameriere è a contatto con cibi persone attrezzature e quindi deve curare al massimo la sua pulizia"),
        CardModel(id:3, testo:"Infatti gli alimenti possono dare origine a diverse malattie in quanto veicolo di batteri patogeni e di sostanze venefiche che potrebbero portare a delle intossicazioni alimentari."),
        CardModel(id:4, testo:"Le regole per migliorare la cura della persona sono:\n 1)Dedicare al riposo e alla cura del corpo tutto il tempo necessario \n 2)praticare una ginnastica regolare e fare attenzione nei movimenti \n  3)scegliere con attenzione le scarpe dato che i camerieri stanno molte ore in piedi \n 4)per dare sollievo ai piedi è bene lavarli due tre volte al giorno \n 5)sarebbe bene che le donne utilizzassero calze elasticizzate per non avere le vene varicose"),
        CardModel(id:5, testo:"Altre regole per la cura personale sono:\n 6)la pulizia quotidiana del corpo è la prima regola da seguire \n 7)i capelli devono essere sempre puliti e ben pettinati. si preferiscono corti \n 8)gli uomini devo rasarsi accuratamente ogni mattina o prima del servizio serale \n 9)le mani devono essere ben curate e devono avere le unghie corte e pulite \n 10)le donne non dovrebbero usare smalto sulle unghie \n 11)curare l’alimentazione"),
        CardModel(id:6, testo:"**N.B.** si consiglia anche di: \n -non portare bracciali o anelli o orologi da polso \n -nel caso di ferite utilizzare apposite medicazioni \n -prendere le posate dal manico i bicchieri dallo stelo e i piatti dai bordi \n -rimuovere al più presto i rifiuti dalle zone di lavoro \n -pulire le superfici di lavori quando si è finito di utilizzarle"),
        CardModel(id:7, testo:"E’ importante anche l’HACCP(Hazard Analysis Critical Control Points )che è un sistema che si basa su sette principi ed è determinato da una direttiva europea 852/2004 per l’igiene dei beni alimentari. \n I pericoli posso essere di tre tipi: fisici( insetti, rischi metallici, .. ), chimici(additivi involontari, residui di lavaggio, .. ), biologici (presenza di parassiti, contaminazione dei batterica )"),
        CardModel(id:8, testo:" PRONTO SOCCORSO \n \n Cosa fare? \n -Allentare abiti stretti in caso di emorragie \n -comprime a monte l’emorragia \n -chiamare il 118"),
        CardModel(id:9, testo:"Cosa Non fare? \n -Agire senza il consenso dell’infortunato \n -spostarlo \n -correre rischi personali \n -dare medicinali \n -eseguire manovre mediche \n -considerare morto l’infortunato")
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

struct ChapterThreeCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterThreeCardView()
    }
}
