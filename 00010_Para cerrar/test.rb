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

it "Después de tocar el piano 23 veces, ya no está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  23.times { Jazmin.tocar }
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "Después de tocar el piano 23 veces, y afinarlo durante diez horas, está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  23.times { Jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 10)
  expect(PianoFamiliar.esta_afinado?).to be true
end

it "Después de tocar el piano 90 veces, y afinarlo durante una hora, no está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  90.times { Jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 1)
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "después de tocar el piano 90 veces, y afinarlo durante 20 horas, está afinado" do
  Jazmin.piano=(PianoFamiliar)  
  90.times { Jazmin.tocar }
  Lucio.afinar(PianoFamiliar, 20)
  expect(PianoFamiliar.esta_afinado?).to be false
end

it "la afinación máxima es 100 aunque afine el piano durante 743 horas" do
  Lucio.afinar(PianoFamiliar, 743)
  Jazmin.piano=(PianoFamiliar)  
  90.times { Jazmin.tocar }
  expect(PianoFamiliar.esta_afinado?).to be false
end
