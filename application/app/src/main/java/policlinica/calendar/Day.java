package policlinica.calendar;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

import policlinica.users.Admin;
import policlinica.users.User;

public class Day {
	private String intervalorar;
	private Date date;
	private static final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");; 
	private String nrUnitate;
	private String nrContract;
	public Day(Date date) {
		this.date = date;
		this.intervalorar = new String("liber");
		this.nrUnitate = "0";
		this.nrContract = null;
	}
	
	public Day(String date) {
		try {
			this.date = simpleDateFormat.parse(date);
			this.intervalorar = new String("liber");
			this.nrUnitate = "0";
			this.nrContract = null;
		} catch (ParseException e) {
			System.err.println("Nu s-a reusit transformarea String in date");
			e.printStackTrace();
		}
	}
	public int getDayOfMonth() {
		String[] luna = this.getStringDate().split("-");
		return Integer.parseInt(luna[2]) ;
	}
	public int getMounthOfYear() {
		String[] luna = this.getStringDate().split("-");
		return Integer.parseInt(luna[1]) ;
	}
	public int getYear() {
		String[] luna = this.getStringDate().split("-");
		return Integer.parseInt(luna[0]) ;
	}
	public String getNrUnitate() {
		return nrUnitate;
	}

	public void setNrUnitate(String nrUnitate) {
		this.nrUnitate = nrUnitate;
	}
	public int compareTo(Day day2) {
		return this.date.compareTo(day2.date);
	}
	public int getIntDayOfWeek() {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return  c.get(Calendar.DAY_OF_WEEK);
	}
	public String getNameDayOfWeek() {
		switch (this.getIntDayOfWeek()) {
		case 1: {
			return "Duminica";
		}case 2:{
			return "Luni";
		}case 3:{
			return "Marti";
		}case 4:{
			return "Miercuri";
		}case 5:{
			return "Joi";
		}case 6:{
			return "Vineri";
		}case 7:{
			return "Sambata";
		}
		default:{
			return null;
		}
		}
		
	}
	
	public String getIntervalorar() {
		return intervalorar;
	}
	public ArrayList <String> getArrayOfIntervalOrar(){
		String[] lists = this.intervalorar.split(" ");
		ArrayList<String> array = new ArrayList<>(Arrays.asList(lists));
		return array;
	}
	public void setIntervalOrar(String intervalorar) {
		this.intervalorar = intervalorar;
	}
	public String getStringDate() {
		return simpleDateFormat.format(this.date);
	}
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getNrContract() {
		return nrContract;
	}

	public void setNrContract(String nrContract) {
		this.nrContract = nrContract;
	}

	public void setDayInformation(String nrContract) {
		///Prioritatea datelor Specific, Concediu, Generic
		//pentru concediu intervalul orar = "concediu" ,nrunitate = 0,nume unitate = null
		//default orar = "liber" , nrunitate = 0 , nume unitate = null
		
		User user = new User(nrContract);
		this.nrContract = nrContract;
		this.nrUnitate = user.getNrUnitate();
		Admin admin = new Admin();
		ResultSet resultGeneric = admin.getOrarGeneric(nrContract, this.getNameDayOfWeek());
		ResultSet resultConcediu = admin.getConcediu(nrContract);
		ResultSet resultSpecific = admin.getOrarSpecific(nrContract,this.getStringDate());
		try {
			if (resultGeneric.next())
			{
				this.setIntervalOrar(resultGeneric.getString("intervalOrar"));
				this.setNrUnitate(resultGeneric.getString("nrUnitate"));
			}
			if (resultConcediu.next())
			{
				Day dayin = new Day(resultConcediu.getString("dataIncepere"));
				Day dayout = new Day(resultConcediu.getString("dataTerminare"));
				if (this.compareTo(dayin) >= 0 && this.compareTo(dayout) <= 0) {
					this.setIntervalOrar("concediu");
					this.setNrUnitate(user.getNrUnitate());
				}
			}
			if (resultSpecific.next())
			{
				this.setIntervalOrar(resultSpecific.getString("intervalOrar"));
				this.setNrUnitate(resultSpecific.getString("nrUnitate"));
			}
		} catch (SQLException e) {
			SQLError(e);
		}
		
	}
	public void setDayGenericInformation(String nrContract) {
		
		User user = new User(nrContract);
		this.nrContract = nrContract;
		this.nrUnitate = user.getNrUnitate();
		Admin admin = new Admin();
		ResultSet resultGeneric = admin.getOrarGeneric(nrContract, this.getNameDayOfWeek());
		try {
			if (resultGeneric.next())
			{
				this.setIntervalOrar(resultGeneric.getString("intervalOrar"));
				this.setNrUnitate(resultGeneric.getString("nrUnitate"));
			}
		} catch (SQLException e) {
			SQLError(e);
		}
		
	}
	private void SQLError(SQLException e) {
		System.out.println("Problems in getDayInformation in Calendar Class");
		e.printStackTrace();
	}
	

}
