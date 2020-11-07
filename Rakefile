require 'weneedfeed'

desc 'Build static files.'
task :build, %w[base_url schema_path] do |_task, args|
  Weneedfeed::Capture.call(
    base_url: args[:base_url],
    schema_path: args[:schema_path]
  )
end
