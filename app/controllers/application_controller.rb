class ApplicationController < ActionController::Base
  helper_method :display_button_new
  helper_method :display_button_log

  def display_button_log(current_user)
    if current_user.present?
      return "<div class='field is-grouped mt-2 mr-2'>
          <p class='control'>
            <a class='button is-info' href='/users/edit'>Profile</a>
          </p>
          <p class='control'>
            <a class='button is-danger' rel='nofollow' data-method='delete' href='/users/sign_out'>Log out</a>
          </p>
        </div>".html_safe
    end

    "<div class='field is-grouped mt-2 mr-2'>
        <p class='control'>
          <a class='button is-success' href='/users/sign_in'>Sign in</a>
        </p>
        <p class='control'>
          <a class='button is-success' href='/users/sign_up'>Sign up</a>
        </p>
      </div>".html_safe
  end

  def display_button_new(current_user)
    return "<a class='button is-success' href='/posts/new'>New Post</a>".html_safe if current_user.present?
  end
end
