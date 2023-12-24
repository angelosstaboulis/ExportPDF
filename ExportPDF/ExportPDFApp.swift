//
//  ExportPDFApp.swift
//  ExportPDF
//
//  Created by Angelos Staboulis on 23/12/23.
//

import SwiftUI

@main
struct ExportPDFApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(pdfPath: "", exportPath: "", presented: false).frame(width:300,height:300)
        }.windowResizability(.contentSize)
    }
}
