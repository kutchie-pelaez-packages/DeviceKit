extension Device {
    public static let current: Device = {
        Device(identifier: Device.currentIdentifier)
    }()
}
