class Document < ActiveRecord::Base
  attr_accessible :title, :source_url, :body
end