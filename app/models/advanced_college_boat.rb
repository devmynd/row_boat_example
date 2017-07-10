class AdvancedCollegeBoat < RowBoat::Base
  def import_into
    College
  end

  def column_mapping
    {
      city: :city,
      instnm: :name,
      insturl: :inst_url,
      npcurl: :npc_url,
      opeid: :ope_id,
      stabbr: :state,
      unitid: :unit_id
    }
  end

  def options
    {
      on_duplicate_key_ignore: true,
      convert_values_to_numeric: false
    }
  end

  def preprocess_row(row)
    row if row[:ope_id].ends_with?("00")
  end

  def value_converters
    {
      inst_url: ->(value) { value&.downcase },
      npc_url: :convert_null_to_nil
    }
  end

  def convert_null_to_nil(value)
    case value
    when String
      value.match(/\Anull\z/i) ? nil : value
    else
      value
    end
  end
end
