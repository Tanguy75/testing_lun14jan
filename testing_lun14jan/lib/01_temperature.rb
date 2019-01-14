def ftoc(fig)
    #x ="#{"%g" % ("%.2f" % " #{(fig - 32) / 1.8}")}".to_i
    (fig.to_f - 32) * 5/9

    #  "#{"%g" % ("%.2f" % x)}" -> ca permet de bloquer l'affichage des float a 2 decimales si besoin
end

def ctof(fig)
    (fig.to_f * 1.8) + 32
    #x = "%.2f" % x  # on transforme le floating x en chiffre a 2 decimales
end
