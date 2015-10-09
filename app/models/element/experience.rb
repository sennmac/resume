module Element
  class Experience
    include Mongoid::Document
    embedded_in :resume
    field :title, type: String
    field :company, type: String
    field :description, type: String
    field :start_date, type: String
    field :end_date, type: String
  end
end