require 'rubygems'
require 'sinatra'

namespace 'db' do
  desc "Create db schema"
  task :create do        
    require 'active_record'
    require 'config/config.rb'
  
    ActiveRecord::Migration.create_table :items do |t|
      t.string :description
      
      t.timestamps
    end
    
  end  
end