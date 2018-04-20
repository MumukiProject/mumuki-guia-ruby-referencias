it "La nieta de AbueloGervasio es Melisa" do
  expect(AbueloGervasio.nieta).to be Melisa
end

it "La novia de Fito es Melisa" do
  expect(Fito.novia).to be Melisa
end

it "Melisa aumentó su felicidad" do
  expect(Melisa.felicidad > 100).to be true
end

it "Fito es feliz porque Melisa es feliz" do
  expect(Fito.es_feliz_como_su_novia?).to be true
end

it "AbueloGervasio alimentó 3 veces a Melisa" do
  expect(AbueloGervasio.veces_alimentada).to eq 3
end