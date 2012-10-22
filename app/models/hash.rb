class Hash

  # the method below fixes an issue raised by cloudinary
  # when attempting to upload an image output below
  # [2] pry(main)> Cloudinary::Uploader.upload("/Users/vladi/Desktop/image.jpg") --trace
  # NoMethodError: undefined method `closed?' for #<Hash:0x007ff69c7817a8>
  # from /Users/vladi/.rvm/gems/ruby-1.9.3-p194@fitafy/gems/rest-client-1.6.7/lib/restclient/payload.rb:109:in `close'

  remove_method :read

end