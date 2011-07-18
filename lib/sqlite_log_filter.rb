require "sqlite_log_filter/version"

module ActiveRecord
  module ConnectionAdapters # :nodoc:
    class AbstractAdapter
      def log( sql, name)
        name ||= "SQL"
        if sql.match(/sqlite_master/)
          yield
        else
          @instrumenter.instrument("sql.active_record",
            :sql => sql, :name => name, :connection_id => object_id) do
            yield
          end
        end
      rescue Exception => e
        message = "#{e.class.name}: #{e.message}: #{sql}"
        @logger.debug message if @logger
        raise translate_exception(e, message)
      end
    end
  end
end