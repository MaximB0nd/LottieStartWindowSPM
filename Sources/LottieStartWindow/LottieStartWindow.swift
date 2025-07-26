// The Swift Programming Language

import SwiftUI
import Lottie

@available(iOS 16.0, *)
public struct StartWindow: View {
    
    @Binding var isFinished: Bool
    
    public init(isFinished: Binding<Bool>) {
        self._isFinished = isFinished
    }
    
    var path: URL! {
        Bundle.main.url(forResource: "AnimadatedImage", withExtension: "json")
    }
    
    public var body: some View {
        LottieView (
            animation: .filepath(path.path())
        )
        .playing()
        .animationDidFinish { _ in
            isFinished = true
        }
    }
}
