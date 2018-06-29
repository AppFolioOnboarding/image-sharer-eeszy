# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
picture_links = %w[http://allthatsinteresting.com/wordpress/wp-content/uploads/2013/09/interesting-pictures-asperatus-clouds.jpg http://allthatsinteresting.com/wordpress/wp-content/uploads/2013/09/interesting-pictures-dragon-falls.jpg http://121clicks.com/wp-content/uploads/2012/01/companion_photographs_04.jpg https://dailyseoblog.com/wp-content/uploads/2017/05/How-to-find-interestign-topics-to-blog-about.jpg https://wallpaperbrowse.com/media/images/interesting.jpg http://allthatsinteresting.com/wordpress/wp-content/uploads/2013/09/interesting-pictures-oarfish.jpg https://sobadsogood.com/uploads/media/2015/11/06/10-Interesting-Photographs-To-Celebrate-The-End-Of-The-Week.jpg http://blog.getnarrative.com/wp-content/uploads/2014/05/long-road-900x470.jpg http://allthatsinteresting.com/wordpress/wp-content/uploads/2013/09/interesting-pictures-gas-mask-town.jpg https://cdn-images-1.medium.com/max/438/0*bGCy3LqjBcx_rPGe.jpg https://www.stargazing.me.uk/wp-content/uploads/bfi_thumb/10-Interesting-Facts-about-the-Solar-System-for-Kids-32oxcd9frdk3cpa6twhmh6.jpg http://t.wallpaperweb.org/wallpaper/3d_landscape/1920x1080/interesting3dabstract1920x1080wallpaper1257.jpg http://121clicks.com/wp-content/uploads/2013/07/monsoon_photos_08.jpg https://i.pinimg.com/originals/8c/56/b6/8c56b687130738e82ce822d6fc43e5de.jpg https://static.boredpanda.com/blog/wp-content/uploads/2014/02/interesting-facts-about-love-16.jpg https://lh3.googleusercontent.com/-8MzcLSu2f4A/Vz7vAebEGCI/AAAAAAAGeY8/153cFan7swIhBGNeJKkrXuR3eW6HamXWACJoC/w960-h720/image.jpeg https://media-cdn.tripadvisor.com/media/photo-s/01/66/fa/a0/beautiful-and-interesting.jpg https://static.businessinsider.com/image/51c33f37eab8ea675e000007/image.jpg https://usercontent2.hubstatic.com/6140053_f520.jpg http://im.rediff.com/news/2015/apr/13week1.jpg]

picture_links.each do |picture|
  Image.create(link: picture)
end
