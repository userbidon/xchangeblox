class Element < ActiveRecord::Base


    # MODULE_LIST =  (21..23).to_a.map{|i| "A#{i}"}
    PROMO_LIST = %w(CB1 CB2 INGE1 INGE2 INGE3 INGED1 INGED2 INGED3 INGEAC1 INGEFP2 INGETTN1 INGEPRO3)
    ELEMENT_LIST = %w(Cours QROC TD TP Projets)

    # utiliser  Element::ELEMENT_LIST pour appeler ces tableaux
    belongs_to :user


  def is_this_user_allowed_to_edit_me?(u)
    user == u  || u.is_admin?
  end

end
