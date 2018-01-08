it "El PianoFamiliar está inicialmente afinado" do
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Lucio sabe afinar el piano" do
  Lucio.afinar(PianoFamiliar, 3)
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Inicialmente Jazmín no tiene un piano" do
  expect { Jazmin.tocar }.to raise_error
end

it "Después de tocar el piano 21 veces, ya no está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  21.times { Jazmin.tocar }
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "Después de tocar el piano 21 veces, y afinarlo durante una horas, está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  21.times { Jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 1)
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Después de tocar el piano 90 veces, y afinarlo durante una hora, no está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  90.times { Jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 1)
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "Después de tocar el piano 90 veces, y afinarlo durante 20 horas, no está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  90.times { Jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 20)
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "La afinación máxima es 100 aunque afine el piano durante 743 horas" do
  Lucio.afinar(PianoFamiliar, 743)
  Jazmin.piano=(PianoFamiliar)  
  90.times { Jazmin.tocar }
  expect(PianoFamiliar.esta_afinado?).to be false
end
