import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
extension Color {
    static let coolGray = Color("CoolGray")
    static let lightGray = Color("LightGray")
    static let powerOrange = Color("PowerOrange")
    static let teal = Color("Teal")
    static let yellow = Color("Yellow")
}

@available(iOS 13.0, macOS 10.15, *)
extension Image {
    public init(name: Asset) {
        self.init(uiImage: UIImage(named: name.rawValue, in: .module, with: nil)!)
    }

    public enum Asset: String {
        case ArrowDown, ArrowLeft, ArrowRight, ArrowUp, Assets,
        Badge, Book, Calendar, ChangePassword, Chart, Check,
        CheckRound, Clear, Coaching, Cross, CustomFields,
        File, Filter, Fire, Folder, Insights, LearningCenter,
        Monitor, Pen, People, QuestionMark, Search, Settings,
        Sort, Templates, ThreeDots, TurnOff, User, UserRound
    }
}
