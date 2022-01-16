import UIKit

extension Device {
    public enum Orientation {
        case landscape
        case portrait
    }

    public var orientation: Orientation {
        UIDevice.current.orientation.isLandscape ? .landscape : .portrait
    }
}
