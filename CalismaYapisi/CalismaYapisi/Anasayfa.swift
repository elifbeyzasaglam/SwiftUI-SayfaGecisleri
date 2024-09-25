//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by ELİF BEYZA SAĞLAM on 24.09.2024.
//

import SwiftUI

struct Anasayfa: View {
    @State private var oyunEkraninaGecis = false
    var body: some View {
        
        NavigationStack{
            VStack{
                
//      NavigationLink(destination: OyunEkrani()){
//                    Text("Başla")
//                }
// böyle de sayfa geçişi yapabiliriz.
// button ile de yapabiliriz
                Button("BAŞLA"){
                    oyunEkraninaGecis = true
                }
            }.navigationTitle("Anasayfa")
                .navigationDestination(isPresented: $oyunEkraninaGecis){
                    OyunEkrani()
                }
        }
    }
}

#Preview {
    Anasayfa()
}
