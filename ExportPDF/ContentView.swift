//
//  ContentView.swift
//  ExportPDF
//
//  Created by Angelos Staboulis on 23/12/23.
//

import SwiftUI
import PDFKit
struct ContentView: View {
    @State var pdfPath:String
    @State var exportPath:String
    @State var presented:Bool
    var body: some View {
        VStack {
            Text("PDF Path")
            TextField("Export PDF Path",text: $pdfPath)
            Spacer()
            Text("Export Path")
            TextField("Export Path",text:$exportPath)
            Spacer()
            Button {
                presented.toggle()
                exportPDF()
            } label: {
                Text("Create PDF File")
            }.alert(isPresented: $presented) {
                let alert = Alert(title: Text("Information Message"), message: Text("File was created"), primaryButton: .default(Text("OK")), secondaryButton: .default(Text("OK")))
                return alert
            }

        }
        .padding()
    }
    func exportPDF(){
        let getData = FileManager.default.contents(atPath: pdfPath)
        FileManager.default.createFile(atPath: exportPath, contents: getData)
    }
}

#Preview {
    ContentView(pdfPath: "", exportPath: "", presented: false)
}
