module SpreeWorkshop
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      def add_javascripts
        append_file 'app/assets/javascripts/store/all.js', "//= require store/spree_workshop\n"
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/spree_workshop\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/store/all.css', " *= require store/spree_workshop\n", :before => /\*\//, :verbose => true
        inject_into_file 'app/assets/stylesheets/admin/all.css', " *= require admin/spree_workshop\n", :before => /\*\//, :verbose => true
      end

      def add_datas
        run 'mkdir db/default' unless Dir.exist?('db/default')
        copy_file "towns.yml", "db/default/spree/towns.yml"
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_workshop'
      end

      def run_migrations
         res = ask 'Would you like to run the migrations now? [Y/n]'
         if res == '' || res.downcase == 'y'
           run 'bundle exec rake db:migrate'
         else
           puts 'Skipping rake db:migrate, don\'t forget to run it!'
         end
      end
    end
  end
end
