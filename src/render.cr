require "./libg3"
require "markdown"

def extract_content(f)
    # skip past the metadata chunks
    f.each_line do |line|
        if line.strip == ""
            break
        end
    end
    return String.build do |str|
        f.each_line do |line|
            str << line
            str << "\n"
        end
    end
end

src = ARGV[0]
dst = File.join("_g3/tmp", LibG3.to_ref(src) + ".render")
Dir.mkdir_p(File.dirname(dst))

extras = LibG3.read_config().extras

File.open(src, "r") do |r|
    content = extract_content(r)
    File.open(dst, "w") do |w|
        w << Markdown.to_html(content)
        w.flush
    end
end
