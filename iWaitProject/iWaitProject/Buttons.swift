//
//  Buttons.swift
//  iWaitProject
//
//  Created by Francesco on 22/02/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack{
            
            Image("Group1")
            Divider()
                .padding(.top)
                Image("Group2")
            Image("Group2")
            Image("Group2")
            Image("Group2")

          
        }
    }
    
    struct Buttons_Previews: PreviewProvider {
        static var previews: some View {
            Buttons()
        }
    }
}
