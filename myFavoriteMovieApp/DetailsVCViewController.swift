import UIKit

class DetailsVCViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ozetLabel: UILabel!
    
    var selectedMovieName = ""
    var selectedImage = UIImage()
    var selectedShortMovie = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = selectedMovieName
        imageView.image = selectedImage
        ozetLabel.text = selectedShortMovie
        
        

        
    }
    

   

}
