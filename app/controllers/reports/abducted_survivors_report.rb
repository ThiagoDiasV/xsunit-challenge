class AbductedSurvivorReport < Dossier::Report
    def sql
        'SELECT * FROM SURVIVORS'
    end
end