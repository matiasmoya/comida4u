module AdminHelper
  def categories_for_select
    Category.all.map{ |cat| [cat.name, cat.id] }
  end

  def neighborhoods_for_select
    Neighborhood.all.map{ |neig| [neig.name, neig.id] }
  end
end