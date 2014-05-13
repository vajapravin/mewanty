module ApplicationHelper
	def users_nav_links
		_nav = ["<ul class='nav navbar-nav'>"]
		_nav << "<li class=#{'active' if controller_name == 'home'}><a href='/'>Home</a></li>"
		_nav << "<li class=#{'active' if controller_name == 'products'}><a href='/products'>Products</a></li>" if only_admin
        _nav << "<li class='dropdown #{'active' if controller_name == 'products' && action_name == 'show'}'>"
        	_nav << "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>Categories <b class='caret'></b></a>"
			_nav << "<ul class='dropdown-menu'>"
			Category.all.each do |category|
				_nav << "<li><a href='/'>#{category.name.titlecase rescue ''}</a></li>"
			end
			_nav << "</ul></li>"
        _nav << "<li class=#{'active' if controller_name == 'contact'}><a href='#contact'>Contact</a></li>"
        _nav << "</ul>"
		_nav << "<ul class='nav navbar-nav navbar-right'>"
        if user_signed_in?
          _nav << "<li><a href='#{destroy_user_session_path}' data-method='delete'>Logout</a></li>"
        else
          _nav << "<li><a href='/users/sign_in'>Login</a></li>"
        end
        _nav << "</ul>"
		_nav.join().html_safe
	end

	def only_admin
		return true if user_signed_in? && current_user.is_admin
		return false
	end

	def escapeHTML content
		c = content.gsub("'","&#39;")
		return c.gsub('"','&#34;')
	end

end