module ApplicationHelper
	def all_products_li
		_st = ["<ul class='dropdown-menu'>"]
		Product.all.each do |product|
			_st << "<li><a href='/'>#{product.name.titlecase rescue ''}</a></li>"
		end
		_st << "</ul>"
		_st.join().html_safe
	end
	def users_nav_links
		_nav = ["<ul class='nav navbar-nav navbar-right'>"]
        if user_signed_in?
          _nav << "<li><a href='/logout'>Logout</a></li>"
        else
          _nav << "<li><a href='/users/sign_in'>Login</a></li>"
        end
        _nav << "</ul>"
		_nav.join().html_safe
	end
end
