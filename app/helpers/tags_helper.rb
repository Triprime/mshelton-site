module TagsHelper

  def display_tags(taggable_object)  
    if taggable_object.tags.any?
      content_tag :p do   
        taggable_object.tags.each do |tag| 
          concat content_tag(:span, tag.name, class: "label label-success")
        end
      end 
    end 
  end
  
end