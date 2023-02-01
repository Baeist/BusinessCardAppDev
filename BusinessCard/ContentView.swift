//
//  ContentView.swift
//  BusinessCard
//
//  Created by Lars Dam on 31/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    var name = "Blomster-butikken"
    var email = "blomster@hus.dk"
    var adress = "Ternevej 19, 3240 Hjølstrup"
    var phoneNumber = ""
    var homePage = ""
    var about = "Beskrivelse af blomsterbutikken. De laver nok fantastiske buketter til alle mulige begivenheder."
    
    @State private var pageTurner: Bool = true
    
    
    var body: some View {
        VStack{
            if(pageTurner){
                VStack {
                    Text(name)
                        .font(.system(size: 60))
                    
                    HStack(alignment: .center ,spacing: 35){
                        Text(adress)
                        Text(email)
                    }
                    .padding(25)
                    
                    Button("Om os", action: changeView)
                        .padding(40)
                    
                }
                
                .padding()
                .background(
                    Image("daisy")
                )
            }
            
            
            else{
                VStack{
                    Text(about)
                    Button("Tilbage", action: changeView)
                        .padding(40)
                }
                .background(
                    Image("daisy")
                    )
                .padding()
            }
        }
        }
        
    func changeView(){
        if(pageTurner){
            self.pageTurner = false
        }
        else{
            self.pageTurner = true
        }
        
    }
    
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
