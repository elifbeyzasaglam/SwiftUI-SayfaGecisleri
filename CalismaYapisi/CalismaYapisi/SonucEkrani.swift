//
//  SonucEkrani.swift
//  CalismaYapisi
//
//  Created by ELİF BEYZA SAĞLAM on 24.09.2024.
//

import SwiftUI

struct SonucEkrani: View {
    @Environment(\.presentationMode) var pm

    var body: some View {
        VStack(spacing: 100) {
            Text("Sonuç Ekranı").font(.system(size: 50))
            
            Button("KAPAT"){
                pm.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    SonucEkrani()
}
