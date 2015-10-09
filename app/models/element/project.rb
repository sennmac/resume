module Element
  class Project
    include Mongoid::Document
    embedded_in :resume
    field :name, type: String
    field :title, type: String
    field :description, type: String
    field :start_date, type: String
    field :end_date, type: String
  end
end