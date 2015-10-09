module Element
  class BaseDescription
    include Mongoid::Document
    embedded_in :resume
    field :lead, type: String
    field :introduction, type: String
    field :contact, type: String

  end
end