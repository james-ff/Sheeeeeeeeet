//
//  ViewController.swift
//  SheeeeeeeeetExample
//
//  Created by Daniel Saidi on 2017-11-18.
//  Copyright © 2017 Daniel Saidi. All rights reserved.
//

import UIKit
import Sheeeeeeeeet

class ViewController: UIViewController {

    let item1 = ActionSheetItem(title: "foo", value: "foo", image: nil)
    let item2 = ActionSheetSelectItem(title: "bar", isSelected: true, value: 4, image: nil)
    let item3 = ActionSheetSelectItem(title: "baz", isSelected: false, value: 5, image: nil)
    
    var actionSheet: ActionSheet?
    
    @IBAction func showActionSheet(_ sender: Any) {
        
        ActionSheetAppearance.standard.selectItem.selectedTextColor = .green
        let presenter = /*PopoverActionSheetPresenter()// */DefaultActionSheetPresenter()
        let items = [item1, item2, item3]
        actionSheet = ActionSheet(items: items, presenter: presenter) { item in
            print(item.value)
        }
        //actionSheet?.headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: 10, height: 100))
        actionSheet?.headerView?.backgroundColor = .red
        actionSheet?.present(in: self, from: sender as? UIView)
    }
}
