module ActiveAdmin
  module Views
    class DataTableFor < ActiveAdmin::Views::TableFor
      builder_method :data_table_for

      def build(titles, obj, *attrs)
        # options         = attrs.extract_options!
        # options.merge! :class => "data_table index_table"
        # @sortable       = options.delete(:sortable)
        # @collection     = obj.respond_to?(:each) && !obj.is_a?(Hash) ? obj : [obj]
        # @resource_class = options.delete(:i18n)
        # @resource_class ||= @collection.klass if @collection.respond_to? :klass
        # @columns        = []
        # @row_class      = options.delete(:row_class)
        #
        # build_table
        super(obj, :class => "data_table")
        titles.each_with_index {|title, i| column title, i}
      end

    end
  end
end
