it "El nieto de AbueloGervasio es Juli" do
  expect(AbueloGervasio.nieto).to be Juli
end

it "El amigo de Fito es Juli" do
  expect(Fito.amigo).to be Juli
end

it "Juli aumentó su felicidad" do
  expect(Juli.felicidad > 100).to be true
end

it "Fito es feliz porque Juli es feliz" do
  expect(Fito.es_feliz_como_su_amigo?).to be true
end

it "AbueloGervasio alimentó 3 veces a Juli" do
  expect(AbueloGervasio.veces_alimentado).to eq 3
end