module Lita
  module Adapters
    class MicrosoftTeams < Adapter
      # insert adapter code here

      Lita.register_adapter(:microsoft_teams, self)
    end
  end
end
