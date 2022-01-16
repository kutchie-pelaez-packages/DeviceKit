import UIKit

extension Device {
    public var isPod: Bool {
        isOneOf(Device.allPods) ||
        isOneOf(Device.allSimulatorPods)
    }

    public var isPhone: Bool {
        (
            isOneOf(Device.allPhones) ||
            isOneOf(Device.allSimulatorPhones) ||
            (UIDevice.current.userInterfaceIdiom == .phone && isCurrent)
        ) &&
        !isPod
    }

    public var isPad: Bool {
        isOneOf(Device.allPads) ||
        isOneOf(Device.allSimulatorPads) ||
        (
            UIDevice.current.userInterfaceIdiom == .pad &&
            isCurrent
        )
    }

    public var isSimulator: Bool {
        isOneOf(Device.allSimulators)
    }

    public func isOneOf(_ devices: [Device]) -> Bool {
        devices.contains(self)
    }

    public static func realDevice(from device: Device) -> Device {
        if case let .simulator(device) = device {
            return device
        }

        return device
    }

    public var realDevice: Device {
        return Device.realDevice(from: self)
    }

    public var isZoomed: Bool {
        guard isCurrent else { return false }

        if Int(UIScreen.main.scale.rounded()) == 3 {
            return UIScreen.main.nativeScale > 2.7 && UIScreen.main.nativeScale < 3
        } else {
            return UIScreen.main.nativeScale > UIScreen.main.scale
        }
    }

    public var name: String {
        UIDevice.current.name
    }

    public var systemName: String {
        UIDevice.current.systemName
    }

    public var systemVersion: String {
        UIDevice.current.systemVersion
    }

    public var model: String {
        UIDevice.current.model
    }

    public var localizedModel: String {
        UIDevice.current.localizedModel
    }

    private var isCurrent: Bool {
        self == .current
    }
}
