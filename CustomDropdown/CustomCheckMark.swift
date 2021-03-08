//
//  ExpandableView.swift
//  CustomDropdown
//
//  Created by Asraful Alam on 8/3/21.
//

import UIKit

@IBDesignable
class CustomCheckMark: UIControl {

    private weak var imageView: UIImageView!
    
    @IBInspectable
    public var checked: Bool = false{
        didSet{
            imageView.image = image
        }
    }
    
    private var image: UIImage{
        return checked ? UIImage(named: "Tick Square")! : UIImage(named: "box")!
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    private func setUp(){
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        self.imageView = imageView
        backgroundColor = UIColor.clear
        addTarget(self, action: #selector(touchupinside), for: .touchUpInside)
    }
    
    @objc func touchupinside(){
        self.checked = !checked
        sendActions(for: .valueChanged)
    }
    
    
}
