require_relative '../lib/hello' #chemin jusqu'au fichier pour dire qu'on va aller dedans

describe "the hello function" do #permet d'ouvrir un premier groupe de tests que l'on a appelé "the hello function". Comme son nom l'indique, ce groupe de tests automatiques va se focaliser sur ce que doit faire la fonction "hello".
  it "says hello" do #permet d'ouvrir un premier test au sein du groupe de test "the hello function". Nous avons intitulé ce test "says hello" car c'est précisément ce comportement qu'on va tester sur la fonction hello.
    expect(hello).to eq("Hello world !") #On a indiqué via expect(..) qu'on va exécuter la fonction hello. Puis le .to eq(..) permet de spécifier le résultat attendu : un string "Hello world!"
  end
end
