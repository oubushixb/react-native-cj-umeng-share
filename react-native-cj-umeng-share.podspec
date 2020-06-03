require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-cj-umeng-share"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-cj-umeng-share
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-cj-umeng-share"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-cj-umeng-share.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"

  s.dependency "UMCShare/UI"
  s.dependency "UMCShare/Social/WeChat"
  s.dependency "UMCShare/Social/ReducedQQ"
  s.dependency "UMCShare/Social/ReducedSina"
  # ...
  # s.dependency "..."
end

