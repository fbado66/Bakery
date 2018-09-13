require "sinatra"
require_relative "./goods_generator"
require_relative "./item_generator"
require "sendgrid-ruby"

 include SendGrid


# cakes array to display after, using materialize and loops 
cakes=[]
def generator_cakes
  cake_banana = Goods.new('Banana Cake', 'images/cakes_images/Banana-Cake.jpeg', 'The best banana Cake you ll ever have', '$1.00')
  cake_carrot = Goods.new(' Carrot Cake', 'images/cakes_images/Carrot-Cake.jpeg', 'This cake is so good, you wont get enough', '$1.00')
  cake_choc_but = Goods.new(' Chocolate with Buttercream Cake', 'images/cakes_images/Chocolate-Cake-wth-Chocolate-Buttercream.jpeg', 'Keeping the richest flavors is tradition', '$1.00')
  cake_confetti = Goods.new(' Confetti Cake', 'images/cakes_images/Confetti-Cake.jpeg', 'For those special ocasions when the party element is needed', '$1.00')
  cake_devil_food = Goods.new(' Devils Food Cake', 'images/cakes_images/Devils-Food-Cake.jpeg', 'Dare to taste a piece of the fordibben heavens', '$1.00')
  cake_coconut = Goods.new(' Coconut Cake', 'images/cakes_images/Coconut-Cake.jpeg', 'This cake will transport you to the tropical ', '$1.00')
  cake_hummingbird = Goods.new(' Hummingbird Cake', 'images/cakes_images/Hummingbird-Cake.jpeg', 'Channel your inner nature spirit dare to try', '$1.00')
  cake_naked = Goods.new(' Naked Cake', 'images/cakes_images/Naked-Cake.jpeg', 'To share with that special person, or perhaps people? ', '$1.00')
  cake_pistacho = Goods.new(' Pistachio Cake', 'images/cakes_images/Pistachio-Cake.jpeg', 'Pistacho is present in the house, keeping it real', '$1.00')
  cake_spice = Goods.new('Pumkin Spice Cake', 'images/cakes_images/Pumpkin-Spice-Cake.jpeg', 'Time to step out of the conform zone ', '$1.00')
  cake_red_velvet = Goods.new(' Red Velvet Cake', 'images/cakes_images/Red-Velvet-Cake.jpeg', 'Keeping it as elegant as it gets never tasted this good', '$1.00')
  cake_rose_top = Goods.new(' Rose Top Cake', 'images/cakes_images/Rose-Top.jpeg', 'Cake has its beauty, but our is the best', '$1.00')

  [cake_banana, cake_carrot, cake_choc_but, cake_confetti, 
  cake_devil_food, cake_coconut, cake_hummingbird, cake_naked,
   cake_pistacho, cake_spice, cake_red_velvet, cake_rose_top ]

end 


# cookies array to display after, using materialize and loops 
cookie=[]
def generator_cookies
  cookie_chocolate = Goods.new('Chocolate Chunk', 'images/cookies_images/choc_chunk.jpg', 'This tasty favorite is packed with chunks of rich, soft 
  chocolate that melts in your mounth.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_peanut = Goods.new('Chocolate Peanut Butter', 'images/cookies_images/chocolate_peanut_butter_cup.jpg', 'Loaded with chunks of Reeses peanut 
  butter cups and baked into a peanut butter cookie.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_classic= Goods.new('Classic with M&M s', 'images/cookies_images/classic_mm.jpg', 'TM&Ms baked into our signature dough, this festive 
  treat is a party for your taste buds.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_double_choc = Goods.new('Double Chocolate Chunk', 'images/cookies_images/double_choc_chunk_.jpg', 'This cookie is double the fun with chunks of smooth 
  chocolate inside a moist chocolate cookie.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_double_mint = Goods.new('Double Chocolate Mint', 'images/cookies_images/double_choc_mint.jpg', 'Our delicious chocolate cookie baked with rich chocolate
  chunks and mint chocolate chips.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_oatmeal = Goods.new('Oatmeal Raisin', 'images/cookies_images/oatmeal_raisin.jpg', 'A classic cookie flavor, speckled with plump raisins,
  and an extra hint of cinnamon.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_peanut_chip = Goods.new('Peanut Butter Chip', 'images/cookies_images/peanut_butter.jpg', 'Perfect combination of creamy peanut butter chips melded into a soft
  peanut butter flavored cookie.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_smores = Goods.new('S-mores', 'images/cookies_images/smores.jpg', 'Packed with chocolate, marshmallows 
  and graham crackers, baked into choco cookie.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_snickerdoodle = Goods.new('Snickerdoodle', 'images/cookies_images/snickerdoodle.jpg', 'Simple and delectable! Our signature batter topped with a 
  cinnamon and sugar mix.', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_sugar = Goods.new('Sugar', 'images/cookies_images/sugar.jpg', 'A classic sweet and buttery cookie! Need we say more? Dare to try it, then we talk', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_white_choc = Goods.new('White Chocolate Macadamia', 'images/cookies_images/white_chocolate_macadamia.jpg', 'Is filled with sweet, white chocolate chips, 
  macadamia nuts and just a hint of coconut', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_trp_choc = Goods.new('Triple Chocolate', 'images/cookies_images/triple_chocolate.jpg', 'Has a delicious mix of semi-sweet chocolate 
  chunks, milk chocolate chunks, and Hershey-s kisses.', '$9.59 the dozen / $0.99 per single cookie.')

  [cookie_chocolate, cookie_peanut, cookie_classic, cookie_double_choc,
   cookie_double_mint, cookie_oatmeal, cookie_peanut_chip, cookie_smores,
   cookie_snickerdoodle, cookie_sugar, cookie_white_choc, cookie_trp_choc ]

end 


# muffins array to display after, using materialize and loops 
muffin=[]
def generator_muffins
  muffin_banana = Goods.new('Gluten Free Banana Almond Butter', 'images/muffins_images/almond-butter-banana-muffin.jpg', 'Dare to try this beauty', '$1.00')
  muffin_apple = Goods.new(' Double Apple Bran Muffins', 'images/muffins_images/apple-bran-muffin.jpg', 'One wont ever be enough', '$1.00')
  muffin_camberry = Goods.new(' Cranberry Bran Muffins', 'images/muffins_images/camberry_brand_muffin.jpg', 'Take me with you everywhere ', '$1.00')
  muffin_cornmeal = Goods.new(' Cornmeal Raisin Muffins', 'images/muffins_images/cormeal_raisin_muffin.jpg', 'Keep the traditions rolling', '$1.00')
  muffin_gluten = Goods.new(' Gluten Free Blackberry Cornmeal', 'images/muffins_images/gluten-free-blackberry-cornmeal-muffins.jpg', 'As helthy as it can get ', '$1.00')
  muffin_kale = Goods.new(' Kale Corn Jalapeno Muffins', 'images/muffins_images/kale-corn-jalapeno.jpg', 'Channel your inner spirit ', '$1.00')
  muffin_maple = Goods.new(' Maple Muffins with Oat Streusel', 'images/muffins_images/maple-muffins.jpg', 'Elegance is always at its peak', '$1.00')
  muffin_orange = Goods.new(' Orange and Date Crumble Muffins', 'images/muffins_images/orange-date-crumble-muffin.jpg', 'Adding fruits to make it better', '$1.00')
  muffin_sweet = Goods.new(' Sweet Potato Chocolate Chunk', 'images/muffins_images/sweet-potato-chocolate-chunk.jpg', 'Main flavor says present in the house', '$1.00')
  muffin_vegan = Goods.new(' Vegan Blueberry Muffins', 'images/muffins_images/vegan-blueberry-muffin.jpg', 'Vegans we are in the house as well', '$1.00')
  muffin_wild = Goods.new(' Wild Blueberry Spelt Oat', 'images/muffins_images/wild-blueberry-spelt-oat-muffins.jpg', 'When the flavor is just right ad you know it', '$1.00')
  muffin_zucchini = Goods.new('Zucchini Gruyere and Black Pepper', 'images/muffins_images/zucchini-gruyere-black-papper-muffin.jpg', 'Try it, I know you will learn to like me', '$1.00')
  
  [muffin_banana, muffin_apple, muffin_camberry, muffin_cornmeal,
   muffin_gluten, muffin_kale, muffin_maple, muffin_orange,
    muffin_sweet, muffin_wild, muffin_zucchini, muffin_vegan ]
end 

catalog=[]
def generator_catalog
  muffin_banana = Items.new('Gluten Free Banana Almond Butter Muffins', 'images/muffins_images/almond-butter-banana-muffin.jpg', '$1.00')
  muffin_apple = Items.new(' Double Apple Bran Muffins', 'images/muffins_images/apple-bran-muffin.jpg', '$1.00')
  muffin_camberry = Items.new(' Cranberry Bran Muffins', 'images/muffins_images/camberry_brand_muffin.jpg', '$1.00')
  muffin_cornmeal = Items.new(' Cornmeal Raisin Muffins', 'images/muffins_images/cormeal_raisin_muffin.jpg',  '$1.00')
  muffin_gluten = Items.new(' Gluten Free Blackberry Cornmeal Muffins', 'images/muffins_images/gluten-free-blackberry-cornmeal-muffins.jpg', '$1.00')
  muffin_kale = Items.new(' Kale Corn Jalapeno Muffins', 'images/muffins_images/kale-corn-jalapeno.jpg', '$1.00')
  muffin_maple = Items.new(' Maple Muffins with Oat Streusel', 'images/muffins_images/maple-muffins.jpg', '$1.00')
  muffin_orange = Items.new(' Orange and Date Crumble Muffins', 'images/muffins_images/orange-date-crumble-muffin.jpg', '$1.00')
  muffin_sweet = Items.new(' Sweet Potato Chocolate Chunk', 'images/muffins_images/sweet-potato-chocolate-chunk.jpg',  '$1.00')
  muffin_vegan = Items.new(' Vegan Blueberry Muffins', 'images/muffins_images/vegan-blueberry-muffin.jpg', '$1.00')
  muffin_wild = Items.new(' Wild Blueberry Spelt Oat Muffins', 'images/muffins_images/wild-blueberry-spelt-oat-muffins.jpg', '$1.00')
  muffin_zucchini = Items.new('Zucchini Gruyere and Black Pepper Muffins', 'images/muffins_images/zucchini-gruyere-black-papper-muffin.jpg', '$1.00')
  cookie_chocolate = Items.new('Chocolate Chunk', 'images/cookies_images/choc_chunk.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_peanut = Items.new('Chocolate Peanut Butter', 'images/cookies_images/chocolate_peanut_butter_cup.jpg',  '$9.59 the dozen / $0.99 per single cookie.')
  cookie_classic= Items.new('Classic with M&M s', 'images/cookies_images/classic_mm.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_double_choc = Items.new('Double Chocolate Chunk', 'images/cookies_images/double_choc_chunk_.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_double_mint = Items.new('Double Chocolate Mint', 'images/cookies_images/double_choc_mint.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_oatmeal = Items.new('Oatmeal Raisin', 'images/cookies_images/oatmeal_raisin.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_peanut_chip = Items.new('Peanut Butter Chip', 'images/cookies_images/peanut_butter.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_smores = Items.new('S-mores', 'images/cookies_images/smores.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_snickerdoodle = Items.new('Snickerdoodle', 'images/cookies_images/snickerdoodle.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_sugar = Items.new('Sugar', 'images/cookies_images/sugar.jpg',  '$9.59 the dozen / $0.99 per single cookie.')
  cookie_white_choc = Items.new('White Chocolate Macadamia', 'images/cookies_images/white_chocolate_macadamia.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cookie_trp_choc = Items.new('Triple Chocolate', 'images/cookies_images/triple_chocolate.jpg', '$9.59 the dozen / $0.99 per single cookie.')
  cake_banana = Items.new('Banana Cake', 'images/cakes_images/Banana-Cake.jpeg', '$1.00')
  cake_carrot = Items.new(' Carrot Cake', 'images/cakes_images/Carrot-Cake.jpeg','$1.00')
  cake_choc_but = Items.new(' Chocolate with Buttercream Cake', 'images/cakes_images/Chocolate-Cake-wth-Chocolate-Buttercream.jpeg',  '$1.00')
  cake_confetti = Items.new(' Confetti Cake', 'images/cakes_images/Confetti-Cake.jpeg', '$1.00')
  cake_devil_food = Items.new(' Devils Food Cake', 'images/cakes_images/Devils-Food-Cake.jpeg', '$1.00')
  cake_coconut = Items.new(' Coconut Cake', 'images/cakes_images/Coconut-Cake.jpeg',  '$1.00')
  cake_hummingbird = Items.new(' Hummingbird Cake', 'images/cakes_images/Hummingbird-Cake.jpeg', '$1.00')
  cake_naked = Items.new(' Naked Cake', 'images/cakes_images/Naked-Cake.jpeg', '$1.00')
  cake_pistacho = Items.new(' Pistachio Cake', 'images/cakes_images/Pistachio-Cake.jpeg',  '$1.00')
  cake_spice = Items.new(' Pumkin Spice Cake', 'images/cakes_images/Pumpkin-Spice-Cake.jpeg',  '$1.00')
  cake_red_velvet = Items.new(' Red Velvet Cake', 'images/cakes_images/Red-Velvet-Cake.jpeg',  '$1.00')
  cake_rose_top = Items.new(' Rose Top Cake', 'images/cakes_images/Rose-Top.jpeg', '$1.00')

  [muffin_banana, muffin_apple, muffin_camberry, muffin_cornmeal,
   muffin_gluten, muffin_kale, muffin_maple, muffin_orange,
    muffin_sweet, muffin_wild, muffin_zucchini, muffin_vegan,
    cookie_chocolate, cookie_peanut, cookie_classic, cookie_double_choc,
   cookie_double_mint, cookie_oatmeal, cookie_peanut_chip, cookie_smores,
   cookie_snickerdoodle, cookie_sugar, cookie_white_choc, cookie_trp_choc, 
   cake_banana, cake_carrot, cake_choc_but, cake_confetti, 
  cake_devil_food, cake_coconut, cake_hummingbird, cake_naked,
   cake_pistacho, cake_spice, cake_red_velvet, cake_rose_top ]

end 

get "/" do

  erb :index
end

get "/about_us" do

  erb :about
end


get "/cakes" do
  @cake = generator_cakes
  erb :cake
end

get "/cookies" do
  @cookie = generator_cookies
  erb :cookie
end

get "/muffins" do
  @muffin = generator_muffins
  erb :muffin
end

get "/term_of_use" do 
  erb :term_of_us
end 

get "/careers" do 
  erb :careers
end 

get "/catalog" do
  @catalog = generator_catalog
  erb :catalog
end 


get "/contact_us" do   
erb (:form)
end

get "contact_us" do 
  erb :contact
end 

post "/contact" do
  @catalog = generator_catalog

  from = Email.new(email: 'fbado66@gmail.com')
  to = Email.new(email: params[:email_address])
  subject = 'Thank you for subscribing'
  content = Content.new(
    type: 'text/html', 
    value:  erb(:catalog)
  )
  
  # create mail object with from, subject, to and content
  mail = Mail.new(from, subject, to, content)
  
  # sets up the api key
  sg = SendGrid::API.new(
    api_key: ENV["SENDGRID_API_KEY"]
  )
  # sends the email
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  
  # display http response code
  puts response.status_code
  
  # display http response body
  puts response.body
  
  # display http response headers
  puts response.headers
  
erb :contact
end
















  