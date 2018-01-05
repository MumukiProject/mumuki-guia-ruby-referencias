it "El PianoFamiliar está inicialmente afinado" do
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Después de tocar el piano 21 veces, ya no está afinado" do
  Jazmin.piano(PianoFamiliar)  
  21.times { jazmin.tocar }
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "Lucio sabe afinar el piano" do
  Lucio.afinar(PianoFamiliar, 3)
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Después de tocar el piano 21 veces, y afinarlo durante una hora, está afinado" do
  Jazmin.piano(PianoFamiliar)  
  21.times { jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 1)
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Después de tocar el piano 90 veces, y afinarlo durante una hora, no está afinado" do
  Jazmin.piano(PianoFamiliar)  
  90.times { jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 1)
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "después de tocar el piano 90 veces, y afinarlo durante 20 horas, está afinado" do
  Jazmin.piano(PianoFamiliar)  
  90.times { jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 20)
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "la afinación máxima es 100 aunque afine el piano durante 743 horas" do
  Lucio.afinar(PianoFamiliar, 743)
  Jazmin.piano(PianoFamiliar)  
  90.times { jazmin.tocar }
  expect(PianoFamiliar.esta_afinado?).to be false
end
