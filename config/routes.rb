Rails.application.routes.draw do
  
  get("/", { :controller => "zebra", :action => "home"})

  get("/square/new", { :controller => "zebra", :action => "home"})
  get("/square/results", { :controller => "zebra", :action => "sqres"})

  get("/square_root/new", { :controller => "zebra", :action => "sqrt"})
  get("/square_root/results", { :controller => "zebra", :action => "sqrtres"})

  get("/payment/new", { :controller => "zebra", :action => "pay"})
  get("/payment/results", { :controller => "zebra", :action => "payres"})

  get("/random/new", { :controller => "zebra", :action => "ran"})
  get("/random/results", { :controller => "zebra", :action => "ranres"})



end
