module ApplicationHelper

    def require_login
        redirect_to root_path unless logged_in?
      end
    
      def logged_in?
        !!current_eater
      end
    
      def current_eater
        @_current_eater ||= Eater.find_by(:id => session[:eater_id])
      end
end
