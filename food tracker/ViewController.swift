//
//  ViewController.swift
//  food tracker
//
//  Created by Izzaty on 05/08/2019.
//  Copyright © 2019 Izzaty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var mealLabel: UILabel!
    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealTextField.delegate = self as? UITextFieldDelegate
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mealLabel.text = mealTextField.text
    }
    

    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
    
        // hide the keyboard when user click image
        mealTextField.resignFirstResponder()
        // UIImagePickerController is a view controller that lets a user pick media from their photo library
        let imagePickerController = UIImagePickerController()
        
        //Only allow photos to be picked not taken
        imagePickerController.sourceType = .photoLibrary
        
        //make sure viewcontroller is notified when user picks an image
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        photoImageView.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
    
}

