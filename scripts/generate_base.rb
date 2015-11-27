# read file
file_data = File.read("../modpescript_dump.txt")

file_data.each_line do |line|
  md_namespacemethod = /(.+)\.(.+)\((.+)?\);/.match(line)
  if not md_namespacemethod.nil?

    # A namespace method it is!
    # Match it for arguments
    md_args = line.scan(/(par\d(int|String|double|float|Scriptable|Object))/).to_a

    args = []

    # Loop through each (par[NUM][TYPE], ) arg
    if not md_args.nil?
      md_args.each do |it|
        if md_namespacemethod[1] == "Entity"
          args << it[1].sub("Object", "entity")
        else
          args << it[1]
        end
      end
    end

    puts "#{md_namespacemethod[1]}.#{md_namespacemethod[2]}(#{args.join(", ")})"
  end
end
