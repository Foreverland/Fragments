import Foundation
import UIKit

extension Tailor {
  struct Style {
    let id: String
    let font: UIFont?

    init(JSON: [String : AnyObject]) {
      id = JSON["id"] as! String
      let fontString = JSON["font"] as! String
      let fontSize = JSON["font_size"] as! CGFloat
      font = UIFont(name: fontString, size: fontSize)!
    }
  }

  struct Piece {
    let content: String
    let styleID: String
    let type: Type

    enum Type {
      case Text
    }

    init(JSON: [String : AnyObject]) {
      switch(JSON["type"] as! String) {
      case "text":
        type = .Text
      default:
        fatalError("Not supported type")
      }

      content = JSON["content"] as! String
      styleID = JSON["style_id"] as! String
    }
  }

  struct Data {
//    let pieces: [Piece]
//    let styles: [[String : AnyObject]]

    init(piecesJSON: [[String : AnyObject]], stylesJSON: [[String : AnyObject]]) {

    }
  }
}