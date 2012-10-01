Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "workshop_in_header",
                     :insert_bottom => "#main-nav-bar",
                     :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/workshop') ? 'current' : 'not'%>'><%= link_to t('spree.workshop.new.workshop'), spree_new_workshop_path  %></li>")
