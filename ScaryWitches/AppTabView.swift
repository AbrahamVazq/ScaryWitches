//  AppTabView.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 17/06/25.

import SwiftUI

struct AppTabView: View {
    
    // Necesitamos acceso al carrito aquí para mostrar el número en el badge.
    @EnvironmentObject private var cart: SWCart
    
    var body: some View {
        
        TabView {
            
            ContentView()
                .tabItem {
                    Label("Menú", systemImage: "cup.and.saucer.fill")
                }
            
            SWCartView()
                .tabItem {
                    Label("Carrito", systemImage: "cart.fill")
                }
            // Este badge muestra el número de items en el carrito.
            // Se actualiza automáticamente gracias a @Published.
                .badge(cart.items.count)
        }
        
    }
}


#Preview {
    AppTabView()
        .environmentObject(SWCart())
}
