//
//  ViewController.swift
//  PDFTest
//
//  Created by Micah Burnside on 5/31/22.
//

import UIKit
import PDFKit

class ViewController: BaseViewController {
    
let pdfView = PDFView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(pdfView)
        guard let url = Bundle.main.url(forResource: "NewPlayerGuidePDF", withExtension: "pdf") else {
            return
        }
        guard let document = PDFDocument(url: url) else {
            return
        }
        pdfView.document = document

    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdfView.frame = view.bounds
    }

}

