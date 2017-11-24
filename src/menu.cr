require "./libg3"

class Link
    property sub

    def initialize(target : String, text : String, path : String)
        @target = target
        @path = path
        @text = text
        self.sub = [] of Link
    end

    def to_html : String
        text = @sub.empty? ? @text : "#{@text}/"
        a = "<a href='#{@target}'>#{text}</a>"
        return a if @sub.empty

        g = [a, "<ul>"]
        @sub.sort_by { |t| t.text }
            .each    { |t| g << t.to_html }
        g << "</ul>"
        return g.join("\n")
    end
end

def strip_tmp(p)
    return File.join(LibG3.split(p).skip(2))
end

def files_to_link(p)
    Dir.glob("*.header").each do |f|
        if File.stat(f).file?
            yield LibG3.to_ref(f), File.basename(f) == "index.header"
        end
    end
    Dir.glob("*/index.header").each do |f|
        if File.stat(f).file?
            yield LibG3.to_ref(f), false
        end
    end
end
