module ImagesHelper

  def render_images_in_rows(images)
    size = @images.size
    rows = []
    row = []
    @images.each_with_index do |image, index|
      if ((index % 3) == 0) and (index != 0)
        rows << create_row(row)
        row = []
        row << render("/admin/images/partials/image", :image => image)
        rows << create_row(row) if (index == (size -1))        
      else
        row << render("/admin/images/partials/image", :image => image)
        rows << create_row(row) if (index == (size -1))        
      end
    end
    rows
  end
  
  def create_row(row)
    content = content_tag :div, :class => "row" do      
      row.join(" ").html_safe
    end
  end
end		

