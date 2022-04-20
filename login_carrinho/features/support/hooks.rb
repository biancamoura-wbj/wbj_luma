After do |scenario|
    Dir.mkdir('Data') unless Dir.exist?('Data')
    Dir.mkdir('Data/Reports') unless Dir.exist?('Data/Reports')
    image_name = "Data/Reports/img/imagem-1.png"
    temp_shot = page.save_screenshot(image_name)
    file_shot = File.open(temp_shot, "rb").read
    final_shot = Base64.encode64(file_shot)
    embed(temp_shot, "image/png", "Evidência!")
end

at_exit do
ReportBuilder.configure do |config|
    config.json_path = 'Data/Reports/report.json'
    config.report_path = 'Data/Reports/'
    config.report_types = [:html]
    config.report_title = 'My Test Results'
    config.include_images = true
    config.compress_images = false
    config.additional_info = {browser: 'Chrome', environment: 'Stage 5'}
  end
  
ReportBuilder.build_report
end