//
//  ViewController.swift
//  AppWithoutStoryboard
//
//  Created by Thonatas Borges on 07/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        self.view = view
    }
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 100)
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.contentSize = contentViewSize
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "monterey")
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Os betas chegaram!"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Desenvolvedores, chegou a hora mais aguardada do ano! 😁
        
        A Apple acabou de disponibilizar as primeiras versões do iOS 15 (compilação 19A5261w), do iPadOS 15 (idem), do macOS Monterey 12 (21A5248p), do watchOS 8 (19R5266q) e do tvOS 15 (19J55268r).

        Além disso, a empresa lançou também a primeira versão beta do Xcode 13 (compilação 13A5154h).
        """

        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let firstImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "img1")
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let secondImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "img2")
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let thirdImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "img3")
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        
        scrollViewConstraints()
        mainImageViewConstraints()
        titleLabelConstraints()
        firstImageViewConstraints()
        secondImageViewConstraints()
        thirdImageViewConstraints()
        textLabelConstraints()
    }
    
    func scrollViewConstraints() {
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
    
    func mainImageViewConstraints() {
        scrollView.addSubview(mainImageView)
        mainImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
    }
    
    func titleLabelConstraints() {
        scrollView.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 15).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 15).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    func firstImageViewConstraints() {
        scrollView.addSubview(firstImageView)
        firstImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15).isActive = true
        firstImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        firstImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        firstImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/3).isActive = true
    }
    
    func secondImageViewConstraints() {
        scrollView.addSubview(secondImageView)
        secondImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15).isActive = true
        secondImageView.leadingAnchor.constraint(equalTo: firstImageView.trailingAnchor, constant: 0).isActive = true
        secondImageView.heightAnchor.constraint(equalTo: firstImageView.heightAnchor, multiplier: 1).isActive = true
        secondImageView.widthAnchor.constraint(equalTo: firstImageView.widthAnchor, multiplier: 1).isActive = true
    }
    
    func thirdImageViewConstraints() {
        scrollView.addSubview(thirdImageView)
        thirdImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15).isActive = true
        thirdImageView.leadingAnchor.constraint(equalTo: secondImageView.trailingAnchor, constant: 0).isActive = true
        thirdImageView.heightAnchor.constraint(equalTo: firstImageView.heightAnchor, multiplier: 1).isActive = true
        thirdImageView.widthAnchor.constraint(equalTo: firstImageView.widthAnchor, multiplier: 1).isActive = true
    }
    
    func textLabelConstraints() {
        scrollView.addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: firstImageView.bottomAnchor, constant: 15).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
    }

}

