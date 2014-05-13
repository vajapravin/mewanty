Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'Z78pjWFurYd6g3hjSTuZfw', 'QN9CKKjIUvEIufglXRGLt1yTmW50pnnkFVO7Xb3yw'
  provider :facebook, '117063451793549', 'c17163181493c46c2040ca00fad24dde'
end