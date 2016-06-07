
Pod::Spec.new do |s|

  s.name         = "BaseTab"
  s.version      = "0.0.1"
  s.summary      = "A BaseLib For a New App."

   s.description      = <<-DESC
                       Testing Private Podspec.
 
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC

  s.homepage     = "https://github.com/daisyNew/BaseTab"

  s.license      = "MIT"

  s.author       = "niugaifang"

  s.source       = { :git => "https://github.com/daisyNew/BaseTab.git", :tag => s.version.to_s }


  s.source_files  = "Classes/**/*"
  s.exclude_files = "Classes/Exclude"

  s.ios.deployment_target = "7.0"

  s.requires_arc = true


end
