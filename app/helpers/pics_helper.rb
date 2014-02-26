module PicsHelper

  def display_pics(picable_object)  
    if picable_object.pics.any?
      content_tag :p do   
        picable_object.pics.each do |pic| 
          concat content_tag(:span, pic.name)
        end
      end 
    end 
  end
end
