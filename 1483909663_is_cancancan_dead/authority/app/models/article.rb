class Article < ApplicationRecord
  include Authority::Abilities
end
