//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
struct DemoContentView: View {
    private let model = DemoObj()
    @State var text: String = ""
    @State var image: String = ""
    @State var models: TargetingClass
    
    @ViewBuilder var body: some View {
        DemoScreenView(presenter:
                        DemoPresenter(interactor:
                                        DemoInteractors(model: self.model,
                                                        text: text, 
                                                        image: image,
                                                        models: models)
                                     )
        )
    }
}
