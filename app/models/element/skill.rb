module Element
  class Skill
    include Mongoid::Document
    embedded_in :resume
    field :name, type: String
    field :point, type: Integer
  end
end