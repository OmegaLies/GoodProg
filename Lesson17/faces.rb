file_name = "#{__dir__}/face_#{Time.now.strftime("%Y.%m.%d_%H-%M-%S")}.txt"
File.open(file_name, "a:UTF-8") do|file|
  paths = [
    "#{__dir__}/data/foreheads.txt",
    "#{__dir__}/data/eyes.txt",
    "#{__dir__}/data/noses.txt",
    "#{__dir__}/data/mouths.txt",
  ]
  paths.each do |path|
    lines = File.readlines(path, chomp: true)
    file.puts(lines.sample)
  end
end





