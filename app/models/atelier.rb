class Atelier < ApplicationRecord
    enum domains: [ :Developpement, :Création, :Communication, ]    
end

