class Fluent::KaniCounterOutput < Fluent::BufferedOutput
  Fluent::Plugin.register_output('kanicounter', self)

  # config_param :hoge, :string, :default => 'hoge'
#  config_param :tag, :string
#  config_param :value, :integer :default => 0

  def initialize
    super
    # require 'hogepos'
  end

  def configure(conf)
    super
    # @path = conf['path']
  end

  def start
    super
    # init
  end

  def shutdown
    super
    # destroy
  end

  def format(tag, time, record)
    [tag, time, record].to_msgpack
  end

  def write(chunk)
    records = []
    chunk.msgpack_each { |record|
       record = "kani"
       records << record
    }
    # write records
  end
end
