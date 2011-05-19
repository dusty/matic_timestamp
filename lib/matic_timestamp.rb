class TimestampObserver < Mongomatic::Observer
  def before_insert(instance, opts)
    instance[:created_at] = Time.now.utc
  end
  def before_insert_or_update(instance, opts)
    instance[:updated_at] = Time.now.utc
  end
end

module Mongomatic
  module Plugins
    module Timestamps
      def self.included(base)
        base.send(:include, Mongomatic::Observable)
        base.send(:observer, :TimestampObserver)
      end
    end
  end
end