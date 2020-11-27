class ApplicationController < ActionController::Base
    helper_method :display_button_new  
  helper_method :display_button_log


    def display_button_log(current_user)
        if current_user.present?
          return "<a href=#{destroy_user_session_path} data-method='delete' rel='nofollow'> Log out </a>".html_safe
        end
    
        "<a href=#{new_user_session_path}> Log in </a>".html_safe
      end
    
      def display_button_new(current_user)
        if current_user.present?
          return "<a class='button is-success' href='/posts/new'>New Post</a>".html_safe
        end
      end
    
end
