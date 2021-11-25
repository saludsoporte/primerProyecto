class RelacionLibro < ApplicationRecord
  belongs_to :biblioteca
  belongs_to :libro
end
