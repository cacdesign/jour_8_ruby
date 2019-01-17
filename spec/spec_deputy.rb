require_relative '../lib/deputy'

describe "Mon programme de scrapping Crypto fonctionne-t-il ?" do
    it "Le programme doit me retourner un array" do
    expect(get_deputy_urls(10).is_a?Array).to eq(true)
     end

    it "Le tableau doit contenir à minima 100 Mairies" do
       expect(get_deputy_urls(10).length>5).to eq(true)
     end

    it "Le premier député s'apelle DaMr Abad" do
        expect(get_deputy_urls(10)[0][:last_name]).to eq("Abad")   
      end


  end