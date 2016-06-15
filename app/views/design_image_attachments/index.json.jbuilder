json.array!(@design_image_attachments) do |design_image_attachment|
  json.extract! design_image_attachment, :id, :image
  json.url design_image_attachment_url(design_image_attachment, format: :json)
end
