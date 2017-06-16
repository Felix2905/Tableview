//
//  EditController.swift
//  CollectionStar
//
//  Created by DinhTien on 6/16/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import UIKit

class AddController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
    @IBAction func btnSave(){
        
    }
    
    @IBAction func btnCancel(){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        imgPhoto.addGestureRecognizer(UITapGestureRecognizer(target: self , action: #selector(imgTapped)))
        imgPhoto.isUserInteractionEnabled = true
        
        imgStar1.image = #imageLiteral(resourceName: "star")
        imgStar2.image = #imageLiteral(resourceName: "star")
        imgStar3.image = #imageLiteral(resourceName: "star")
        imgStar4.image = #imageLiteral(resourceName: "star")
        imgStar5.image = #imageLiteral(resourceName: "star")
        imgPhoto.image = #imageLiteral(resourceName: "photo")
        
    }
    
    
    
    func imgTapped(){
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        imgPhoto.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
}

}
