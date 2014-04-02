PROJECT_CEEDLING_ROOT = "vendor/ceedling"
load "#{PROJECT_CEEDLING_ROOT}/lib/rakefile.rb"

task :default => %w[ test:all release_hex ]

task :release_hex => :release do
  output = "Fade.hex"
  output_message = "Release build '#{output}'"
  puts "\n\n#{output_message}"
  puts '-' * output_message.length
  puts "ObjCopying #{output}..."
  `"C:\\Program Files (x86)\\Arduino\\hardware\\tools\\avr\\bin\\avr-objcopy" -O ihex build/release/Fade.out build/release/${output}`
end
