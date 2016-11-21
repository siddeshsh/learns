namespace :test do
  task :login_register do
    load_driver
    login_register_flow
    browser_quit
  end  

  task :cart_flow do
    load_driver
    product_to_cart_flow
    browser_quit
  end
end