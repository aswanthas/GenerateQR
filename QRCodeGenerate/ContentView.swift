//
//  ContentView.swift
//  QRCodeGenerate
//
//  Created by Aswanth K on 14/06/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        VStack(alignment: .center) {
            Text("Your QR code")
                .font(Font.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
            Text("Show this QR code to attend class and event.")
                .font(Font.system(size: 12, weight: .light, design: .rounded))
                .foregroundColor(.black)
                .padding(.bottom, 20)
            VStack(alignment: .leading, spacing: 4) {
                if let qrImage = viewModel.generateQR(string: "English") {
                    Image(uiImage: qrImage)
                        .resizable()
                        .interpolation(.none)
                        .scaledToFill()
                        .frame(height: 300)
                } else {
                    // geting nil value from getQRCodeImage
                }
            }
            .padding(.all, 16)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
            )
        }
        .padding(.all, 20 )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
