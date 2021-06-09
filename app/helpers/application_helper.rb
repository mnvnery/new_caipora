module ApplicationHelper
    def current_class?(test_path)
        return 'active' if request.path == test_path
        ''
    end

    def page_name?
            if request.path == "/about"
                return "SOBRE NÓS"
            elsif request.path == "/presentation"
                return "APRESENTAÇÃO"
            elsif request.path == "/contact"
                return "CONTACTOS"
            elsif request.path == "/trips/1"
                return "AMAZÓNIA"
            elsif request.path == "/trips/2"
                return "GUATEMALA"
            else 
                return ""
        end
    end

    def pres?
        return "page-left-smaller" if request.path == "/presentation"     
    end

    def home?
        return 'home-hide' if request.path == "/"
    end
end
