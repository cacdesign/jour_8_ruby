require_relative '../lib/town'

describe "Mon programme de scrapping Crypto fonctionne-t-il ?" do
    it "Le programme doit me retourner un array" do
    expect(get_townhall_urls.is_a?Array).to eq(true)
     end


    it "Le programme doit contenir la mairie ABLEIGES" do
        expect(get_townhall_urls.join.include?('ABLEIGES')).to eq(true)   
      end

    it "Le programme doit associer à la mairie ABLEIGES l'adresse mail mairie.ableiges95@wanadoo.fr " do
        expect(get_townhall_urls[0]['ABLEIGES']).to eq("mairie.ableiges95@wanadoo.fr")   
      end


  end