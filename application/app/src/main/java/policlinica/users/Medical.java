package policlinica.users;

import policlinica.MedicAux;
import policlinica.Pacient;
import policlinica.Programare;
import policlinica.Serviciu;
import policlinica.calendar.Day;

import java.util.ArrayList;
import java.sql.*;

public class Medical extends User {

	public Medical(ResultSet result) {
		super(result);
	}

	public Medical(String nrContract) {
		super(nrContract);
	}

	public Medical() {
		super();
	}
	public ArrayList<Pacient> getListaPacienti() {
		ArrayList<Pacient> lista = new ArrayList<Pacient>();
		ResultSet rs = executeSelect("Select * from Pacient");
		try {
			while (rs.next()) {
				lista.add(new Pacient(rs.getString("nrPacient"), rs.getString("nume"), rs.getString("prenume")));
			}
		} catch (Exception e) {
			printSqlErrorMessage("getListaPacienti,medical");
		}
		return lista;
	}
	public Boolean setListaServiciuPerProgramare(ArrayList<Serviciu> lista, String nrProgramare) {
		deleteAllServiciuPerProgramare(nrProgramare);
		Boolean mere = true;
		for (int i = 0 ; i < lista.size(); i ++) {
			mere = mere && insertServiciuPerProgramare(lista.get(i), nrProgramare);
		}
		return mere;
	}
	public Boolean insertServiciuPerProgramare(Serviciu serviciu,String nrProgramare) {
		String comanda = "Insert into ServiciuPerProgramare(nrServiciu , nrProgramare,rezultat) values" +
						"(" + serviciu.getNrServiciu() + "," +nrProgramare + ",'" +
						serviciu.getRezultat() + "')";
		return executeUpdate(comanda);
	}
	public Boolean deleteAllServiciuPerProgramare(String nrProgramare) {
		String comanda = "delete from ServiciuPerProgramare where nrProgramare = " +  nrProgramare;
		return executeUpdate(comanda);
	}
	public ArrayList<Serviciu> getListaServiciiPerProgramare(String nrProgramare) {
		ArrayList<Serviciu> lista = new ArrayList<Serviciu>();
		ResultSet rs = executeSelect(
				"Select nrServiciu from ServiciuPerProgramare inner join  Programare on ServiciuPerProgramare.nrProgramare = Programare.nrProgramare where"
						+ " Programare.nrProgramare = " + nrProgramare + ";");
		try {
			while (rs.next()) {
				lista.add(new Serviciu(rs.getString("nrServiciu")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			printSqlErrorMessage("listaServicii/Programari , receptioner");
		}
		return lista;
	}
	public ArrayList<Programare> getProgramari() {
		ArrayList<Programare> lista = new ArrayList<Programare>();
		String comanda ="Select * from Programare";
		ResultSet rs = executeSelect(comanda);
		System.out.println(comanda);
		try {
			while (rs.next()) {
				comanda = "Select * from Raport where nrProgramare = " + rs.getString("nrProgramare") + ";";
				ResultSet aux = executeSelect(comanda);	
				Programare p = new Programare();
				ResultSet aux1; 
				p.setRaport("true");
				p.setAchitat("true");
				if (!aux.next()) {
					p.setRaport("false");
					comanda = "Select nume, prenume from Contract where nrContract = " + rs.getString("nrCMedic") + ";";
					aux1 = executeSelect(comanda);
					if (aux1.next()) {
						p.setMedic(new MedicAux(rs.getString("nrCMedic"), aux1.getString("nume"),
								aux1.getString("prenume")));
						
						
					}
					Day d = new Day(rs.getDate("dataP")); 
					d.setIntervalOrar(rs.getString("ora"));
					p.setDay(d);
					p.setServicii(getListaServiciiPerProgramare(rs.getString("nrProgramare")));
				
					p.setNrProgramare(rs.getString("nrProgramare"));
				}
				
				
				aux = executeSelect("Select * from Plata where nrProgramare = " + rs.getString("nrProgramare") + ";");
				if(!aux.next()) {
					p.setAchitat("false");
					aux1 = executeSelect(
							"Select nume, prenume from Contract where nrContract = " + rs.getString("nrCMedic") + ";");
					if (aux1.next()) {
						p.setMedic(new MedicAux(rs.getString("nrCMedic"), aux1.getString("nume"),
								aux1.getString("prenume")));
					}
					aux1 = executeSelect("Select * from Pacient where nrPacient = " + rs.getString("nrPacient") + ";");
					if (aux1.next()) {
						p.setPacient(new Pacient(aux1.getString("nrPacient"), aux1.getString("nume"),
								aux1.getString("prenume")));
					}
					Day d = new Day(rs.getDate("dataP")); 
					d.setIntervalOrar(rs.getString("ora"));
					p.setDay(d);
					p.setServicii(getListaServiciiPerProgramare(rs.getString("nrProgramare")));
					p.setNrProgramare(rs.getString("nrProgramare"));
				}
					aux1 = executeSelect("Select * from Pacient where nrPacient = " + rs.getString("nrPacient") + ";");
					if (aux1.next()) {
						p.setPacient(new Pacient(aux1.getString("nrPacient"), aux1.getString("nume"),
								aux1.getString("prenume")));
						//System.out.println(p.getCnpPacient() + " " + p.getNumePacient());
					}
					if(!p.isAchitat() || !p.isRaport()) {
						lista.add(p); 
					}
					
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		return lista;
	}
}
