require "json"


module LibG3
    class Config
        JSON.mapping(
            ignore: Array(String),
            extras: Array(String),
        )
    end

    def self.to_ref(path : String)
        return path.rchop(File.extname(path))
    end

    def self.read_config() : Config
        return Config.from_json(File.read("_g3/config.json"))
    end

    def self.split(p : String) : Array(String)
        parts = [] of String
        while true
            k = File.basename(p)
            if k == ""
                break
            end
            parts << k
            p = File.dirname(p)
        end
        return parts
    end
end
