class Element < ActiveRecord::Base

    MODULE_LIST = %w(A21 A22 A23) #= equivaut à ['A21', 'A22', 'A23']
    #ou bien si tu veux comprendre
    #MODULE_LIST =  (21..23).to_a.map{|i| "A#{i}"}
    PROMO_LIST = %w(INGE1 INGE2)
    COURS_LIST = %w(cours td)

  validates :attributes, inclusion: {in: MODULE_LIST}

  1et puis après dans tes vues tu utilie Element::MODULE_LIST pour appeler ces tableaux

end
