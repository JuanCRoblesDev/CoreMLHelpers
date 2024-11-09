//
//  CVPixelBuffer+cgImage.swift
//  NDI6sdk
//
//  Created by Juan C Robles on 16/09/24.
//

import Foundation
import CoreVideo
import AVFoundation
import AppKit
import OpenGL.GL.Macro

import CoreImage
import CoreGraphics
import VideoToolbox

extension CVPixelBuffer {
    public func cgImage() -> CGImage? {
//        TODO: THIS CODE CAUSES A MEMORY LEAK
//        let ciImage = CIImage(cvPixelBuffer: self)
//        let context = CIContext(options: nil)
//        let rect = CGRect(
//            x: 0,
//            y: 0,
//            width: CVPixelBufferGetWidth(self),
//            height: CVPixelBufferGetHeight(self)
//        )
//        
//        return context.createCGImage(ciImage, from: rect)
        
//        if let cgImage = context.createCGImage(ciImage, from: ciImage.extent) {
//        if let cgImage = context.createCGImage(ciImage, from: rect) {
//            return cgImage
//        }
//        
//        return nil
        
        var cgImage: CGImage? = nil
        
        VTCreateCGImageFromCVPixelBuffer(self, options: nil, imageOut: &cgImage)
        
        return cgImage
    }
}
