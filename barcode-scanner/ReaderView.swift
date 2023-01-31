//
//  ReaderView.swift
//  barcode-scanner
//
//  Created by 박경준 on 2023/01/31.
//

import UIKit
import AVFoundation

class ReaderView: UIView {
    weak var delegate: ReaderViewDelegate?
    
    var previewLayer: AVCaptureVideoPreviewLayer?
    var centerGuideLineView: UIView?
    
    var captureSession: AVCaptureSession?
    
    var isRunning: Bool {
        guard let captureSession = self.captureSession else {
            return false
        }
    }
}

protocol ReaderViewDelegate{
    func readerComplete(status: ReaderStatus)
}

enum ReaderStatus {
    case success(_ code: String?)
    case fail
    case stop(_ isButtonTap: Bool)
}
