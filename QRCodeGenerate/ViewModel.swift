//
//  ViewModel.swift
//  QRCodeGenerate
//
//  Created by Aswanth K on 14/06/23.
//

import Foundation
import CoreImage.CIFilterBuiltins
import SwiftUI
public class ViewModel: ObservableObject {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    func generateQR(string: String) -> UIImage? {
        filter.message = Data(string.utf8)
        if let outPutImage = filter.outputImage {
            if let cgImage = context.createCGImage(outPutImage, from: outPutImage.extent) {
                return UIImage(cgImage: cgImage)
            }
        }
        return nil
    }
}
