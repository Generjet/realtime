class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :selected_cell#, :type => String
end
