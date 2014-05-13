ActiveRecord::SessionStore::Session.create!([
  {session_id: "556cb1d6ec078e83ccbb1f50aaedbafb", data: "BAh7CEkiGXdhcmRlbi51c2VyLnVzZXIua2V5BjoGRVRbB1sGaQZJIiIkMmEk\nMTAkaG9RRmJaZ0JEUjVFM2dOeHN2MmlXTwY7AFRJIhBfY3NyZl90b2tlbgY7\nAEZJIjFDYU9zOXgvYVhCZjNxYytIaUpybzdFd21GSFJwK1JnNENRcDRId3NW\naGt3PQY7AEZJIgpmbGFzaAY7AFR7B0kiDGRpc2NhcmQGOwBUWwBJIgxmbGFz\naGVzBjsAVHsGOgtub3RpY2VJIiZQcm9kdWN0IHdhcyBzdWNjZXNzZnVsbHkg\nY3JlYXRlZC4GOwBU\n"}
])
User.create!([
  {email: "vajapravin23@gmail.com", encrypted_password: "$2a$10$hoQFbZgBDR5E3gNxsv2iWOW3wOt6WxHahrAGMiwx2eijghNHUee0S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2014-05-13 09:11:42", last_sign_in_at: "2014-05-13 08:42:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", first_name: nil, last_name: nil, avatar: nil, is_closed: nil, is_admin: true}
])
Category.create!([
  {name: "Food"},
  {name: "Drinks"},
  {name: "Jewelry"},
  {name: "Furniture"},
  {name: "Beauty Products"},
  {name: "Oddities"}
])
Product.create!([
  {name: "Egypt by tinou bao", image: "2065246941_e51172f8b5_b.jpg", link: "http://thewall.sofarider.com/news/egypt-by-tinou-bao/", desc: "I've been looking for some cool images at Flickr and suddenly came across this one. All I can say is WOW!"},
  {name: "My car at Flickr", image: "6420017999_eb5448ee3e_b.jpg", link: "http://thewall.sofarider.com/news/my-car-at-flickr/", desc: "Not quite mine but hopefully it's gonna be mine one day. I will accept donations from all the good people, God bless you!"},
  {name: "Secret Code of DaVinci", image: "102706941_897645fc02_b.jpg", link: "http://thewall.sofarider.com/news/secret-code-of-davinci/", desc: "My deepest apologize in advance because tomorrow and the day after tomorrow I will not be able to respond to user emails. I'll be out of the office, 12000 miles away on the north pole."},
  {name: "From the Flickr", image: "1714127310_bd8df32bd3_b.jpg", link: "http://thewall.sofarider.com/news/from-the-flickr/", desc: "Aliquam nec elit non justo rhoncus cursus. Aenean felis justo, tempus et tincidunt quis, gravida eu velit."},
  {name: "Lincoln – official trailer", image: "3710498218_22e62d11b2_o-650x400.jpg", link: "http://thewall.sofarider.com/news/camera-slideshow/", desc: "Camera slideshow is an open source project, based on Diapo slideshow (http://www.pixedelic.com/plugins/diapo, no more supported, sorry), but improved a lot. You can suggest changes or improvements if you want."},
  {name: "Malesunda nanoot", image: "5318048862_108c0667ee_b-599x400.jpg", link: "http://thewall.sofarider.com/news/malesunda-nanoot/", desc: "Nam lorem dolor, imperdiet ac laoreet in, dignissim eu felis. Vestibulum auctor felis non justo tempor ut commodo elit ultricies."},
  {name: "Multiple Paragraph Post", image: "1471984989_957c7f7093_b-560x400.jpg", link: "http://thewall.sofarider.com/news/multiple-paragraph-post/", desc: "Aliquam erat volutpat. Nam quis lacus turpis, non blandit tellus. Nam pellentesque nibh ut ante lobortis nec rutrum est fringilla. Vivamus nec purus in purus pharetra posuere."},
  {name: "Image Post", image: "187190164_48c6cb8f7a_b.jpg", link: "http://thewall.sofarider.com/news/image-post/", desc: "Donec tristique sapien quis elit lobortis ac ornare dolor pellentesque. Phasellus dapibus rhoncus orci, ac ultrices augue condimentum eu. Nullam commodo diam a urna mattis dictum."}
])
ProductCategory.create!([
  {product_id: 1, category_id: 2},
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 7},
  {product_id: 4, category_id: 3},
  {product_id: 5, category_id: 7},
  {product_id: 6, category_id: 5},
  {product_id: 7, category_id: 4},
  {product_id: 8, category_id: 3}
])
