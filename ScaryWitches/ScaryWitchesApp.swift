//  ScaryWitchesApp.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 05/06/25.

import SwiftUI

@main
struct ScaryWitchesApp: App {
    
    // 1. Creamos una instancia de nuestro carrito que vivirá durante toda la sesión de la app.
    // Se usa @StateObject porque esta vista es la "dueña" del objeto.
    @StateObject private var cart = SWCart()
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
        
    }
}
