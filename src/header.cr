require "./libg3"


path = ARGV[0]
dst_path = File.join("_g3/tmp", LibG3.to_ref(path) + ".header")
Dir.mkdir_p(File.dirname(dst_path))

src = File.open(path)
dst = File.new(dst_path, "w")

src.each_line do |line|
    if line.strip == ""
        break
    end
    dst.puts line
end
dst.flush
