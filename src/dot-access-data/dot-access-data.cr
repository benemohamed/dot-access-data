# TODO: Write documentation for `Dot::Access::Data`
module Dot::Access
  class Data
    @data = {
      1, 2, 3,
    }

    #
    #
    #
    def initialize(hash = nil)
      @data.clear
      @data = hash
    end

    #
    # Append a value to a key (assumes key refers to an array value)
    #
    # ```
    # data.append("")
    # ```
    def append(key, value = nil)
      if key.size == 0
        puts "Key cannot be an empty string"
      end

      currentValue = @data

      keyPath = key.split('.')
      if keyPath.count == 1
        if !currentValue[value].nil?
          currentValue[value] = nil
        end
        if currentValue[value] == Array
          currentValue[key] = [currentValue[key]]
        end
      end
    end

    #
    # Set a value for a key
    #
    # ```
    # data.set("")
    # ```
    def set(key, value = nil)
      if key.size == 0
        puts "Key cannot be an empty string"
      end

      keyPath = key.split('.')
      if keyPath.count == 1
      end
    end

    #
    # Remove a key
    #
    # ```
    # data.remove("")
    # ```
    def remove(key)
      if key.size == 0
        puts "Key cannot be an empty string"
      end

      currentValue = @data

      keyPath = key.split('.')
      if keyPath.count == 1
      end
    end

    #
    # Get the raw value for a key
    #
    # ```
    # data.get("")
    # ```
    def get(key, default = nil)
      currentValue = @data

      keyPath = key.split('.')
      if keyPath.count == 1
      end
    end

    #
    # Check if the key exists
    #
    # ```
    # data.has("")
    # ```
    def has(key)
      currentValue = @data
    end

    #
    # Get a data instance for a key
    #
    # ```
    # data.getData("")
    # ```
    def getData(key)
    end

    #
    # Import data into existing data
    #
    # ```
    # data.import("")
    # ```
    def import(array data, clobber = true)
    end

    #
    # Import data from an external data into existing data
    #
    # ```
    # data.importData("")
    # ```
    def importData(data, clobber = true)
    end

    #
    # Export data as raw data
    #
    # ```
    # data.export
    # ```
    def export
      @data
    end
  end
end
