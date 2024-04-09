//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct DemoScreenView: View {
    var presenter: DemoPresenter
    
    @ViewBuilder public var body: some View {
        ZStack {
            VStack {
                presenter.detailsView(model: presenter.interactor.model)
            }
            Spacer()
        }
    }
}
