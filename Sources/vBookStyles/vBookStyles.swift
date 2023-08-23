#if os(macOS)
import Cocoa
#endif
import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
extension Color {
    public static let coolGray = Color("CoolGray", bundle: .module)
    public static let lightGray = Color("LightGray", bundle: .module)
    public static let powerOrange = Color("PowerOrange", bundle: .module)
    public static let powerTeal = Color("Teal", bundle: .module)
    public static let yellow = Color("Yellow", bundle: .module)
    public static let softBlack = Color("SoftBlack", bundle: .module)
}

@available(iOS 13.0, macOS 11.0, *)
extension Image {
    public init(name: Asset) {
#if os(iOS)
        self.init(uiImage: UIImage(named: name.rawValue, in: .module, with: nil)!)
#else
        self.init(name.rawValue, bundle: .module)
#endif
    }
    
    public enum Asset: String {
        case ArrowDown, ArrowLeft, ArrowRight, ArrowUp, Assets,
             Badge, Book,
             Calendar, Camera, Cancel, ChangePassword, Calories, Chart, Chat, ChatBubbles, Check, CheckRound, Clear, Coaching,
             Contact, Cross, CustomFields,
             Download, DuplexLandscapeOneSided,
             Exit,
             FavoriteStar, File, Filter, Fire, Folder,
             Group,
             Home,
             Insights,
             LearningCenter, Link, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16,
             Mail, MapLayers, Menu, Monitor,
             Pen, People, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9,
             QuestionMark,
             RemoveForm, Ringer, Rotation,
             Save, Search, Send, Settings, Sort,
             Templates, ThreeDots, TurnOff, Trackers,
             Upload, User, UserRound,
             World
        case LogoCorners128, LogoCorners1024
    }
}
