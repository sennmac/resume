module Element
  class Education
    include Mongoid::Document
    embedded_in :resume
    field :school, type: String
    field :description, type: String
    field :start_date, type: String
    field :end_date, type: String
  end
end