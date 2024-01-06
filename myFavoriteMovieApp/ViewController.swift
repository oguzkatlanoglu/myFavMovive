import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var movieNames = [String]()
    var movieImages = [UIImage]()
    var shortMovie = [String]()
    
    var chosenMovieName = ""
    var chosenMovieImage = UIImage()
    var chosenShortMovie = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
       
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
       
        
        
        
        //Özet
        //1
        shortMovie.append("Batman olarak iki yıl sokaklarda dolaşmak ve suçlulara korku salmak Bruce Wayne'i Gotham City'nin karanlığının kalbine sürükledi. Gizemli bir seri katil Riddler, şehrin seçkinlerini hedef alıp bir dizi sadist ve hain saldırı gerçekleştirdiğinde Batman, Riddler'in izini sürmeye başlar.")
        
        //2
        shortMovie.append("Will (Matt Damon), bir üniversitede hademelik yapan süper zeki bir gençtir. Will, bir türlü sokak kavgalarından kendini alıkoyamaz ve başı derde girer. Hapise düşmek üzere olan Will'i bu durumdan kurtarabilecek tek kişi onun yeteneklerini farkeden, okulun profesörlerinden Sean McGuire'dır (Robin Williams).")
        
        //3
        shortMovie.append("Filmde, II. Dünya Savaşı sırasında, zayıf, ufak tefek ve çelimsiz bir adam olan Steve Rogers, süper asker Kaptan Amerika'ya dönüşür ve Kızıl Kafatası'nın Tesseract'ı dünya hakimiyeti için bir enerji kaynağı olarak kullanmasını engellemek zorundadır. Marvel'ın Captain America çizgi-romanına dayanır.")
        
        //4
        shortMovie.append("Teröristlerin elinden kurtulan iki arkadas, Kuzey Irak'ta bir terör örgütü tarafindan kaçirilan bir gazeteciyi kurtarmak için özel bir time katilirlar.")
        
        //5
        shortMovie.append("Batı Cephesinde Yeni Bir Şey Yok, Birinci Dünya Savaşı sırasında Batı Cephesi'nde savaşan bir Alman askerinin hikayesini konu ediyor. Savaşın ilk günlerinde coşkuyla siperlerde yer alan Paul ve silah arkadaşları, savaş devam ettikçe kendilerini korku ve büyük bir çaresizliğin içinde bulur.")
        
        //6
        shortMovie.append("Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. Shawsank Hapishanesi'nde dayak, işkence, tecavüz, her türlü durum yaşanmaktadır fakat Andy gene de hayata bağlı ve iyimserdir.")
        
        //7
        shortMovie.append("Baba, 40'lar ve 50'lerin Amerika'sında, bir İtalyan mafya ailesinin destansı öyküsünü konu alıyor. Don Corleone'nin kızı Connie'nin düğününde, ailenin en küçük oğlu ve bir savaş gazisi olan Michael babasıyla barışır.")
        
        //8
        shortMovie.append("Kitabın konusu, başkarakterin insomnia hastalığı ile olan mücadelesini ele alır. Doktorunun görüşüne göre insomniadan muzdarip değil ve rahatlığı çeşitli destek gruplarında hasta bir kişiymiş gibi katılarak buluyor. Sonradan, Tyler Durden adında bir adamla tanışıyor ve psikoterapi amaçlı dövüş kulübünü başlatıyor.")
        
        //9
        shortMovie.append("1945 yılının Nisan ayında, İkinci Dünya Savaşı'nın son günlerinde geçiyor ve Komutan Wardaddy, topçu Boyd Swan, yükleyici Grady Travis, şoför Trini Garcia ve yardımcı şoför Norman'dan oluşan müfrezenin, 300 düşman askeriyle karşılaştığı ve tüm imkansızlıklarla savaşmak zorunda kaldığı 24 saati konu alıyor.")
        
        //10
        shortMovie.append("Dom Cobb (Leonardo DiCaprio) çok yetenekli bir hırsızdır. Uzmanlık alanı, zihnin en savunmasız olduğu rüya görme anında, bilinçaltının derinliklerindeki değerli sırları çekip çıkarmak ve onları çalmaktır. Cobb'un bu ender mahareti, onu kurumsal casusluğun tehlikeli yeni dünyasında aranan bir oyuncu yapmıştır.")
        
        //11
        shortMovie.append("Yavru bir aslan olan Simba'nın maceralarını konu ediyor. Ormanın kralı olan babası Mufasa'ya hayran bir yavru aslan olarak mutlu bir hayat süren Simba, sinsi amcası Scar'ın planlarından habersizdir. Kral olmak için fırsat kollayan Scar, Mufasa'yı öldürdükten sonra Simba için tehlike baş gösterir.")
        
        //12
        shortMovie.append("Operation Finale 2018 Amerikan yapımı tarihî dram filmidir. Chris Weitz'ın yönettiği yapım, Mossad yetkililerinin Adolf Eichmann adlı eski SS subayını yakalama girişimini konu almaktadır. Filmin başrollerini Oscar Isaac, Ben Kingsley ve Mélanie Laurent paylaşmaktadır.")
        
        //13
        shortMovie.append("Yeni bölümde seçimlerde başı çeken bir senatörün hikayesini izliyoruz. Arınma Gecesi'nin kaldırılması için kampanya yürüten senatör henüz amacına ulaşamadan Arınma Gecesi gelip çatıyor. 24 saatlik özgürlüklerine veda etmek istemeyen suçlular da bu kez senatörü hedef alıyor.")
        
        //14
        shortMovie.append("Baş karakter olan Rocky Balboa boş zamanlarında yaşadığı küçük şehrin yerel kulüplerinden birinde boks yapan amatör bir boksördür. Amerika'da yeni yılın boks maçlarının programları tamamlanmak üzeredir, ancak Apollo Creed isimli yenilmez boksör sakatlanmıştır.")
        
        //15
        shortMovie.append("İmkan dışı seçimlerde bulunması gereken kurbanlar, ellerinden gelen mücadeleyi verirlerken farkında olmadan yaşamak uğrunda neleri feda edebileceklerine de şahit olmaktadırlar. Bu katilin son kurbanları Adam ve Dr.Lawrence Gordon'dur. Bu adamlar birbirlerini hiç tanımazlar ama gözlerini açtıklarında aynı odadadırlar.")
        
        //16
        shortMovie.append("Endgame'de yaşananlar sonrası tekrardan ayaklarının üzerinde durmaya çalışan Peter Parker'ın, okul arkadaşlarıyla gittiği Avrupa gezisi sırasında Nick Fury'nin gizemli bir görevi üzerine yıkmasıyla gelişen olayları konu ediniyor.")
        
        //17
        shortMovie.append("Teddy Daniels ve Chuck Aule isimli iki polis memurunun, Rachel Solando adlı bir akıl hastasının ortadan kaybolması üzerine tehlikeli akıl hastalarının tedavi gördüğü Shutter Adası isimli bölgede konuşlanan Ashecliffe Hastanesi'ne soruşturma yapmak için gitmesi ve sonradan gelişen esrarengiz olaylar aktarılıyor.")
       
        
        
        //isim
        //1
        movieNames.append("The Batman")

        //2
        movieNames.append("Intouchables")
        
        //3
        movieNames.append("Captan America")
        
        //4
        movieNames.append("Dağ 2")
        
        //5
        movieNames.append("Im Westen Nichts Neues")
        
        //6
        movieNames.append("The Shawshank Redemption")
        
        //7
        movieNames.append("The Godfather")
        
        //8
        movieNames.append("Fight Club")
        
        //9
        movieNames.append("Fury")
        
        //10
        movieNames.append("Inception")
        
        //11
        movieNames.append("The Lion King")
        
        //12
        movieNames.append("Operation Finale")
        
        //13
        movieNames.append("The Purge Election Year")
        
        //14
        movieNames.append("Rockey")
        
        //15
        movieNames.append("Saw")
        
        //16
        movieNames.append("Spider-Man: Far From Home")
        
        //17
        movieNames.append("Shutter Island")
        
        
        //resim
        //1
        movieImages.append(UIImage(named:"batman")!)
        
        //2
        movieImages.append(UIImage(named:"candostum")!)
        
        //3
        movieImages.append(UIImage(named:"captanamerica")!)
        
        //4
        movieImages.append(UIImage(named:"dag")!)
        
        //5
        movieImages.append(UIImage(named:"dogu")!)
        
        //6
        movieImages.append(UIImage(named:"esaretinbedeli")!)
        
        //7
        movieImages.append(UIImage(named:"father")!)
        
        //8
        movieImages.append(UIImage(named:"fightclub")!)
        
        //9
        movieImages.append(UIImage(named:"fury")!)
        
        //10
        movieImages.append(UIImage(named:"inception")!)
        
        //11
        movieImages.append(UIImage(named:"lion")!)
        
        //12
        movieImages.append(UIImage(named:"opera")!)
        
        //13
        movieImages.append(UIImage(named:"purge")!)
        
        //14
        movieImages.append(UIImage(named:"rockey")!)
        
        //15
        movieImages.append(UIImage(named:"saw")!)
        
        //16
        movieImages.append(UIImage(named:"spiderman")!)
        
        //17
        movieImages.append(UIImage(named:"zindanadasi")!)
        
                           
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.movieLabel.text = movieNames[indexPath.row]
        cell.movieImageView.image = movieImages[indexPath.row]
        cell.shortOzetLabel.text = shortMovie[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMovieName = movieNames[indexPath.row]
        chosenMovieImage = movieImages[indexPath.row]
        chosenShortMovie = shortMovie[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
       
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVCViewController
            destinationVC.selectedMovieName = chosenMovieName
            destinationVC.selectedImage = chosenMovieImage
            destinationVC.selectedShortMovie = chosenShortMovie
            
            
        }
        
        
        
    }
    
    


}



