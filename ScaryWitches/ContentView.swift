//  ContentView.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 05/06/25.


import SwiftUI

struct ContentView: View {
    
    @State private var products: [SWProduct] = SWProduct.sampleData
    
    var body: some View {
        
        NavigationStack {
            
            List(products) { product in
                
                NavigationLink(destination: SWProductDetailView(product: product)) {
                    SWProductRow(swProduct: product)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Nuestro Menú")
            
        }
    }
}


#Preview {
    ContentView()
}
