class Book < ActiveFedora::Base

  property :title, predicate: ::RDF::DC.title, multiple: false do |index|
    index.as :stored_searchable
  end
  property :author, predicate: ::RDF::DC.creator, multiple: true do |index|
    index.as :stored_searchable
  end

  # within app/models/book.rb
  has_many :pages

end