module ApplicationHelper
    def current_class?(test_path)
        return 'active' if request.path == test_path
        ''
    end

    def background?
        if request.path == "/about"
            return "pink"
        elsif request.path == "/contact" || request.path == "/trips/12/sign_ups/new" || request.path == "/trips/13/sign_ups/new" || request.path == "/trips/13/sign_ups/" || request.path == "/trips/12/sign_ups/"
            return "blue"
        elsif request.path == "/trips/13" || request.path == "/trips/12"
            return "green"
        else
            return ""
        end        
    end

    def body_background?
        if request.path == "/about"
            return "light-pink"
        elsif request.path == "/contact" || request.path == "/trips/12/sign_ups/new" || request.path == "/trips/13/sign_ups/new" || request.path == "/trips/13/sign_ups/" || request.path == "/trips/12/sign_ups/"
            return "light-blue"
        elsif request.path == "/trips/13" || request.path == "/trips/12"
            return "light-green"
        else
            return "ocre"
        end        
    end

    def page_name?
            if request.path == "/about"
                return "SOBRE NÓS"
            elsif request.path == "/contact"
                return "CONTACTOS"
            elsif request.path == "/trips/13"
                return "AMAZÓNIA"
            elsif request.path == "/trips/12"
                return "GUATEMALA"
            else 
                return ""
        end
    end

    def home?
        return 'home-hide' if request.path == "/"
    end


end
