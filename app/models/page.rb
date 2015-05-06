class Page < ActiveFedora::Base

  property :number, predicate: ::RDF::URI.new('http://opaquenamespace.org/hydra/pageNumber'), multiple: false do |index|
    index.as :stored_searchable
    index.type :integer
  end

  property :text, predicate: ::RDF::URI.new('http://opaquenamespace.org/hydra/pageText'), multiple: false do |index|
    index.as :stored_searchable
  end

  # pointer to book object
  belongs_to :book, predicate: ActiveFedora::RDF::Fcrepo::RelsExt.isPartOf

  # contains content
  contains "pageContent"

end