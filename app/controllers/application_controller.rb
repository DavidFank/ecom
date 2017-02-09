class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :categories, :brands

  def categories
  	@categories = Category.all
  end

def brands
	@brands = Product.pluck(:brand).sort.uniq!
	if @brands == nil 
		@brands = Product.pluck(:brand).sort
	end

end

end

