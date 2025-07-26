// The Swift Programming Language

import SwiftUI
import Lottie

@available(iOS 16.0, *)
public struct StartWindow: View {
    
    @Binding var isFinished: Bool
    
    public init(isFinished: Binding<Bool>) {
        self._isFinished = isFinished
    }
    
    var path: URL? {
        Bundle.main.url(forResource: "AnimatedImage", withExtension: "json")
    }
    
    public var body: some View {
        LottieView (
            animation: path != nil ? .filepath(path!.path()) : .asset("AnimatedImage")
        )
        .playing()
        .animationDidFinish { _ in
            isFinished = true
        }
    }
}
