class BasicCollegeBoat < RowBoat::Base
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
      on_duplicate_key_ignore: true
    }
  end
end
