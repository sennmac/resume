module Element
  class Description
    include Mongoid::Document
    embedded_in :resume
    field :description, type: String
  end
end