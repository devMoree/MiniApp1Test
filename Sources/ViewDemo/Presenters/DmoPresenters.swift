//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
class DemoPresenter: ObservableObject {
    let interactor: DemoInteractors!
    
    init(interactor: DemoInteractors) {
        self.interactor = interactor
        self.interactor.getUpDetail()
    }
}

@available(iOS 13.0, *)
extension DemoPresenter: DemoPresenterProtocol {
    func detailsView(model: DemoObj) -> some View {
        ZStack {
            DetailScreenView(interactor: self.interactor)
                .environmentObject(model)
//            DetailListView(interactor: self.interactor)
//                .environmentObject(model)
        }
    }
}

@available(iOS 13.0, *)
extension DemoPresenter: DemoInteractorDelegateProtocol {
    func demo(demo: Bool) {
       //
    }
}

