# https://googleapis.dev/ruby/google-cloud-vision-v1/latest/Google/Cloud/Vision/V1/ImageAnnotator/Client.html
# https://googleapis.dev/ruby/google-cloud-vision-v1/v0.5.0/Google/Cloud/Vision/V1/ImageAnnotator/Client.html
# https://googleapis.dev/ruby/google-cloud-vision-v1/v0.5.0/Google/Cloud/Vision/V1/ImageAnnotator/Client.html#text_detection-instance_method
# require 'google/cloud/vision/v1'
# https://cloud.google.com/ruby/docs/reference/google-cloud-vision-v1/latest/Google-Cloud-Vision-V1-ImageAnnotator-Client#Google__Cloud__Vision__V1__ImageAnnotator__Client_text_detection_instance_

require 'google/cloud/vision/v1'

image_annotator_client = Google::Cloud::Vision::V1::ImageAnnotator::Client.new

response = image_annotator_client.document_text_detection image: '2021_11_timetable_1.pdf'
# response = image_annotator_client.document_text_detection image: '2021_11_timetable_1.png'
response.responses.each do |res|
  puts res
end
