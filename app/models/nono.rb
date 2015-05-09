class Nono < ActiveRecord::Base

  has_many :nono_users
  has_many :users, through: :nono_users


#3 arrays
#array of ingredients
#array of allergies
#array of vegetarian

  # ALLERGIES = {
  #   dairy: "396^Dairy-Free",
  #   egg: "397^Egg-Free",
  #   gluten: "393^Gluten-Free",
  #   peanut: "394^Peanut-Free",
  #   seafood: "398^Seafood-Free",
  #   sesame: "399^Sesame-Free",
  #   soy: "400^Soy-Free",
  #   sulfite: "401^Sulfite-Free",
  #   tree_nut: "395^Tree Nut-Free",
  #   wheat: "392^Wheat-Free"
  # }

  # VEG_OPTIONS = {
  #   lacto_veg: "388^Lacto vegetarian",
  #   ovo_veg: "389^Ovo vegetarian",
  #   pescetarian: "390^Pescetarian",
  #   vegan: "386^Vegan",
  #   vegetarian: "387^Lacto-ovo vegetarian",
  #   paleo: "403^Paleo"
  # }

  # # pass the return value of this method to generate_query in ApiCaller model
  # def self.get_search_code(array_of_nonos)
  #   ingredients = []
  #   allergies = []
  #   vegetarian_options = []
  #   array_of_nonos.each do |nono|
  #     case nono.category
  #     when "allergy"
  #       allergies << ALLERGIES[nono.name.to_sym]
  #     when "vegetarian"
  #       vegetarian_options << VEG_OPTIONS[nono.name.to_sym]
  #     else
  #       ingredients << nono.name
  #     end
  #   end
  #   query_args = {
  #     ingredients: ingredients,
  #     allergies: allergies,
  #     vegetarian_options: vegetarian_options
  #   }
  #   query_args
  # end

end
