//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by ELİF BEYZA SAĞLAM on 24.09.2024.
//

import SwiftUI

struct OyunEkrani: View {
    @Environment(\.presentationMode) var pm
    @State private var sonucEkraninaGecis = false

    var body: some View {
        VStack(spacing: 100) {
                Button("BİTTİ"){
                    sonucEkraninaGecis = true
                }
                Button("GERİ"){
                    pm.wrappedValue.dismiss()
                }
            }.navigationTitle("Oyun Ekranı")
            .sheet(isPresented: $sonucEkraninaGecis){ SonucEkrani()
            }
        }
}

#Preview {
    OyunEkrani()
}
