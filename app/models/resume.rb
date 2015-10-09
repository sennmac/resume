class Resume
  include Mongoid::Document

  field :name, type: String
  field :code, type: String
  field :photo, type: String
  field :status, type: String,:default => 'working'
  embeds_one  :base_description,class_name: 'Element::BaseDescription'
  embeds_one  :description,class_name: 'Element::Description'
  embeds_many :experience,class_name: 'Element::Experience'
  embeds_many :education,class_name: 'Element::Education'
  embeds_many :project,class_name: 'Element::Project'
  embeds_many :skills,class_name: 'Element::Skill'

end