ALTER TABLE AparatPerCabinet ADD CONSTRAINT FK_CeAparatInCabinet FOREIGN KEY (nrAparat) REFERENCES AparatMedical(nrAparat);
ALTER TABLE AparatPerCabinet ADD CONSTRAINT FK_CeCabinetAreAparat FOREIGN KEY (nrCabinet) REFERENCES Cabinet(nrCabinet);
ALTER TABLE Cabinet ADD CONSTRAINT FK_InCeUnitate FOREIGN KEY (nrUnitate) REFERENCES UnitateMedicala(nrUnitate);
ALTER TABLE OrarGeneric ADD CONSTRAINT FK_GenericUnitate FOREIGN KEY (nrUnitate) REFERENCES UnitateMedicala(nrUnitate);
ALTER TABLE OrarGeneric ADD CONSTRAINT FK_GenericContract FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE UserData ADD CONSTRAINT FK_UserContract FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE AparatNecesar ADD CONSTRAINT FK_CeAparatNecesar FOREIGN KEY (nrAparat) REFERENCES AparatMedical(nrAparat);
ALTER TABLE AparatNecesar ADD CONSTRAINT FK_PentruCeServiciu FOREIGN KEY (nrServiciu) REFERENCES Serviciu(nrServiciu);
ALTER TABLE UnitateMedicala ADD CONSTRAINT FK_ProgramUnitate FOREIGN KEY (nrProgram) REFERENCES Program(nrProgram);
ALTER TABLE OrarSpecific ADD CONSTRAINT FK_SpecificUnitate FOREIGN KEY (nrUnitate) REFERENCES UnitateMedicala(nrUnitate);
ALTER TABLE OrarSpecific ADD CONSTRAINT FK_SpecificContract FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE DateAngajat ADD CONSTRAINT FK_CeContract FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE Concediu ADD CONSTRAINT FK_CineConcediu FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE ServiciuPerCabinet ADD CONSTRAINT FK_CeServiciuInCabinet FOREIGN KEY (nrServiciu) REFERENCES Serviciu(nrServiciu);
ALTER TABLE ServiciuPerCabinet ADD CONSTRAINT FK_CeCabinetAreServiciu FOREIGN KEY (nrCabinet) REFERENCES Cabinet(nrCabinet);
ALTER TABLE Contract ADD CONSTRAINT FK_NrUnitate FOREIGN key (nrUnitate) REFERENCES UnitateMedicala(nrUnitate);
ALTER TABLE TipAsistentMedical ADD CONSTRAINT FK_AsistentContract FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE Serviciu ADD CONSTRAINT FK_ServiciuNeedsSpecialitate FOREIGN KEY (nrSpecialitate) REFERENCES Specialitate(nrSpecialitate);
ALTER TABLE ServiciuCustom ADD CONSTRAINT FK_ServiciuCustom FOREIGN KEY (nrServiciu) REFERENCES Serviciu(nrServiciu);
ALTER TABLE ServiciuCustom ADD CONSTRAINT FK_CustomPentruMedic FOREIGN KEY (nrContract) REFERENCES Medic(nrContract);
ALTER TABLE Medic ADD CONSTRAINT FK_MedicContract FOREIGN KEY (nrContract) REFERENCES Contract(nrContract);
ALTER TABLE Raport ADD CONSTRAINT FK_CeProgramare FOREIGN KEY (nrProgramare) REFERENCES Programare(nrProgramare);
ALTER TABLE Raport ADD CONSTRAINT FK_MedicRecomandare FOREIGN KEY (medicRecomandare) REFERENCES Medic(nrContract);
ALTER TABLE Raport ADD CONSTRAINT FK_Asistent FOREIGN KEY (asistentContract) REFERENCES TipAsistentMedical(nrContract);
ALTER TABLE SpecialitateMedic ADD CONSTRAINT FK_CeSpecialitate FOREIGN KEY (nrSpecialitate) REFERENCES Specialitate(nrSpecialitate);
ALTER TABLE SpecialitateMedic ADD CONSTRAINT FK_CeMedic FOREIGN KEY (nrContract) REFERENCES Medic(nrContract);
ALTER TABLE Plata ADD CONSTRAINT FK_PlataProgramare FOREIGN KEY (nrProgramare) REFERENCES Programare(nrProgramare);
ALTER TABLE Programare ADD CONSTRAINT FK_ProgramareLaMedic FOREIGN KEY (nrCMedic) REFERENCES Medic(nrContract);
ALTER TABLE Programare ADD CONSTRAINT FK_ProgramareLaCabinet FOREIGN KEY (nrCabinet) REFERENCES Cabinet(nrCabinet);
ALTER TABLE Programare ADD CONSTRAINT FK_ProgramarePacient FOREIGN KEY (nrPacient) REFERENCES Pacient(nrPacient);
ALTER TABLE ServiciuPerProgramare ADD CONSTRAINT FK_ProgramareLaServiciu FOREIGN KEY (nrServiciu) REFERENCES Serviciu(nrServiciu);
ALTER TABLE ServiciuPerProgramare ADD CONSTRAINT FK_CeProgramareCuServiciu FOREIGN KEY (nrProgramare) REFERENCES Programare(nrProgramare);